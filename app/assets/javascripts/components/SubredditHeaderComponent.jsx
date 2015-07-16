var React = require('react');

var SubredditHeaderComponent = React.createClass({displayName: 'Subreddit Header Component',
  render: function() {
    return (
    		<div className="subreddit-header">
  				<h1> { this.props.subreddit.name } </h1>
          <p> { this.props.subreddit.desc } </p>
				</div>
    	);}
});

module.exports = SubredditHeaderComponent;
