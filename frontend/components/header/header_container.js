import { connect } from 'react-redux';
import Header from './header';
import { revealModalLogin, revealModalSignup } from '../../actions/modal_actions';
import { logout } from '../../actions/session_actions';

const mapDispatchToProps = dispatch => {
  return {
    revealModalLogin: () => dispatch(revealModalLogin()),
    revealModalSignup: () => dispatch(revealModalSignup()),
    logout: () => dispatch(logout())
  };
};

export default connect(null,mapDispatchToProps)(Header);
