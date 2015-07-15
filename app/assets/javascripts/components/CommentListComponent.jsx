var React = require("react");
var Timestamp = require("react-time");

var CommentListComponent = React.createClass({displayName: 'Comment List Component',
  render: function() {

    var someData =[];

    for(key in this.props.collection) {
      var comment = JSON.parse(key)
      someData.push(<CommentComponent comment={ comment } user ={this.props.collection[key]} root = { this.props.root }/>)
    }

    return (
      <div className="comment-list-box">
        {someData}
      </div>
    );
  }
});

module.exports = CommentListComponent;
