var React = require("react");
var Gravatar = require("react-gravatar");
var Timestamp = require("react-time");

var PostComponent = React.createClass({displayName: 'Post Component',
  render: function() {
    return (
      <div className="row post-head">
        <p className="post-title"> { this.props.post.title } </p>
        <p className="post-body"> { this.props.post.body } </p>
        <p className="creation-date">Created: <Timestamp value={this.props.post.created_at} titleFormat="YYYY/MM/DD HH:mm" relative /></p>
      </div>
    );
  }
});

module.exports = PostComponent;
