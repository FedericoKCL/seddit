var React = require("react");
var Timestamp = require("react-time");
var Gravatar = require("react-gravatar");
var CommentComponent = React.createClass({displayName: 'Comment Component',
  render: function() {
    return (
      <div className="row comment-body comment-box">
        <div className="row">
          <div className="comment-head">
            <div className="col-md-offset-0 col-md-4">
              <Gravatar email={ this.props.user.email } size="40" className="gravatar"/>
              <div className="col-md-2">
                <p className="comment-username"> <a href={ this.props.root + "u/" + this.props.user.username } >{ this.props.user.username } </a> says</p>
              </div>
            </div>
          </div>
        </div>
        <p className="comment-body"> { this.props.comment.text } </p>
        <p className="creation-date">Created: <Timestamp value={this.props.comment.created_at} titleFormat="YYYY/MM/DD HH:mm" relative /></p>
      </div>
    );
  }
});

module.exports = CommentComponent;
