var React = require("react");
var Timestamp = require("react-time");

var SubredditComponent = React.createClass({displayName: 'Subreddit Component',
  render: function() {

    var posts =[];

    for(i=0; i<this.props.collection.length; i++) {
      posts.push(<div className="post-brief-box"> <PostBriefComponent post={this.props.collection[i][0]}
                                     createdBy={this.props.collection[i][1]}
                                     count={this.props.collection[i][2]}
                                     root={this.props.root}/> </div>)
    }

    return (
      <div >
        {posts}
      </div>
    );
  }
});

module.exports = SubredditComponent;
