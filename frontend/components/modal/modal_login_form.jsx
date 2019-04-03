import React from 'react';

class ModalLoginForm extends React.Component {
  state = {
    email: '',
    password: ''
  };

  update = type => {
    return event => {
      this.setState({ [type]: event.target.value })
    };
  };

  handleSubmit = event => {
    event.preventDefault();
    this.props.submitAction(this.state);
  };

  handleSwitch = event => {
    event.preventDefault();
    this.props.revealModalSignup();
  };

  guestLogin = event => {
    this.setState({
      email: 'guest@gmail.com',
      password: 'password'
    }, () => {
      this.props.submitAction(this.state)
    });
  };

  render () {
    const errors = this.props.errors.map((er, i) => <li key={i}>{er}</li>);
    const guestLogin = <a onClick={this.guestLogin} className='guest-login'>Guest Login</a>;
    return (
      <form
        className="modal-form"
        onSubmit={this.handleSubmit}>

        <h1 className="modal-form-header">Feel That?</h1>
        <p className="modal-form-subheader">
        That's the feeling of freedom to read and share the stories you truly care about.  
        <br></br><br></br>
        Log in to view a personalized stream, follow users, favorite stories and cheer for what you love. </p>
        <ul className="modal-errors">
          {errors}
        </ul>

        <label htmlFor="email">Email</label>
        <input id="email"
          type="text"
          onChange={this.update('email')}
          value={this.state.email} />

        <label htmlFor="password">Password</label>
        <input id="password"
          type="password"
          onChange={this.update('password')}
          value={this.state.password} />

        <button className="modal-form-button">
          {this.props.title}
        </button>

        <div className="modal-form-button-switch">
          {guestLogin} | 
          <span
            onClick={this.handleSwitch}
            className="switch-text">
            Register
          </span>
        </div>
      </form>
    )
  }
}

export default ModalLoginForm
