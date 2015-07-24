var React = require("react");
var Gravatar = require("react-gravatar");

var SessionDropdownComponent = React.createClass({displayName: "Session Dropdown Component",

  selectComponent: function() {
	if(this.props.user_signed_in){
      var gravatarStyle = {
        "marginRight": "7px",
        "borderStyle": "solid",
        "borderWidth": "1px",
        "borderColor": "#616161"
      };
      return (
        <li className="dropdown">
          <a href="#" className="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
            <Gravatar email={this.props.current_user_email} size={24} style={gravatarStyle}/>
            {this.props.current_user_username}
            <span className="caret" />
          </a>
          <ul className="dropdown-menu">
            <li><a href={this.props.root_path + "u/" + this.props.current_user_username}>View Profile</a></li>
            <li><a href={this.props.edit_user_registration_path}>Edit Profile</a></li>
            <li role="separator" className="divider"></li>
            <li><a href={this.props.destroy_user_session_path}>Logout</a></li>
          </ul>
        </li>
        );
    } else {
      return (<li><a href={this.props.new_user_session_path}>Login</a></li>);
    }
  },

  render: function() {
    return this.selectComponent();
  }
});

module.exports = SessionDropdownComponent;
