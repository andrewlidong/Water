import React from 'react'
import { connect } from 'react-redux'
import { revealModalLogin, revealModalSignup } from '../../actions/modal_actions'

class LoginNav extends React.Component {
  handleLogin = event => {
    event.preventDefault()
    this.props.revealModalLogin()
  }

  handleSignup = event => {
    event.preventDefault()
    this.props.revealModalSignup()
  }

  render () {
    return (
      <nav className="header-nav">
        <button
          className="header-button login"
          onClick={this.handleLogin.bind(this)}>
          Log In
        </button>
        
        <button
          className="header-button signup"
          onClick={this.handleSignup.bind(this)}>
          Register
        </button>
      </nav>
    )
  }
}

const mapDispatchToProps = dispatch => {
  return {
    revealModalLogin: () => dispatch(revealModalLogin()),
    revealModalSignup: () => dispatch(revealModalSignup())
  }
}

export default connect(
  null, mapDispatchToProps
)(LoginNav)
