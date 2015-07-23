var React = require("react");
var Gravatar = require("react-gravatar");
var Timestamp = require("react-time");

var UserSummaryComponent = React.createClass({displayName: "User Summary Component",
  render: function() {
    return (
     <div className="row user-summary-box">
      <div className="col-md-3">
        <Gravatar email={ this.props.user.email } size="100" className="gravatar"/>
      </div>
      <div className="user-info col-md-7">
        <p className="username"> { this.props.user.username } </p>
        <p className="email"><a href={"mailto:" + this.props.user.email}> { this.props.user.email } </a></p>
        <p className="last-sign-in">Last seen: <Timestamp value={this.props.last_sign_in_at} titleFormat="YYYY/MM/DD HH:mm" relative /></p>
      </div>
     </div>
    );
  }
});

module.exports = UserSummaryComponent;
