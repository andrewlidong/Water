class Api::ClapsController < ApplicationController
  
  def create
    @clap = Clap.find_by(
      clapable_type: params[:clap][:clapable_type],
      clapable_id: params[:clap][:clapable_id],
      user_id: current_user.id
    )

    if @clap
      new_clap_count = params[:clap][:quantity].to_i + @clap.quantity
      new_clap_count = 20 if new_clap_count > 20
      if @clap.update(quantity: new_clap_count)
        @clapable = @clap.clapable
        render :show
      else
        render json: @clap.errors.full_messages, status: 401
      end
    else
      @clap = Clap.new(clap_params)
      @clap.user_id = current_user.id

      if @clap.save
        @clapable = @clap.clapable
        render :show
      else
        render json: @clap.errors.full_messages, status: 401
      end
    end
  end

  private

  def clap_params
    params.require(:clap).permit(:clapable_type, :clapable_id, :quantity)
  end
  
end