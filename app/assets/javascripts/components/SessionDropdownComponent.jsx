var React = require('react');

var SessionDropdownComponent = React.createClass({displayName: 'Session Dropdown Component',

  selectComponent: function() {
  	if(this.props.user_signed_in){
    	return(
    		<li className="dropdown">
          <a href="#" className="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{this.props.current_user_username}<span className="caret"></span></a>
          <ul className="dropdown-menu">
            <li><a href="#">View Profile</a></li>
            <li><a href={this.props.edit_user_registration_path}>Edit Profile</a></li>
            <li role="separator" className="divider"></li>
            <li><a href={this.props.destroy_user_session_path}>Logout</a></li>
          </ul>
        </li>
    		);
    } else {
    	return(<li><a href={this.props.new_user_session_path}>Login</a></li>);
    }
  },

  render: function() {
  	return this.selectComponent();
  }
});

module.exports = SessionDropdownComponent;
