var React = require("react");
var Timestamp = require("react-time");
var PostBriefComponent = React.createClass({displayName: 'Post Brief Component',
  render: function() {
    var link;
    if(this.props.post.url) {
      link = this.props.post.url
    } else {
      link = this.props.root + "p/" + this.props.post.id
    }
    return (
      <div>
        <p className="post-title"><a href={link}>{this.props.post.title}</a></p>
        <p className="created-at"> Posted <Timestamp value={this.props.post.created_at}
                                          titleFormat="YYYY/MM/DD HH:mm" relative />
        </p>
        <p className="created-by">Submitted by <a href={this.props.root + "u/" + this.props.createdBy}>
                                                    {this.props.createdBy}</a></p>
        <p className="comment-count">{this.props.count} comments</p>
      </div>
    );
  }
});

module.exports = PostBriefComponent;
