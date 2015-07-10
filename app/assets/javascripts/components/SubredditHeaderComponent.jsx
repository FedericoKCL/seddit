var React = require('react');

var SubredditHeaderComponent = React.createClass({displayName: 'Subreddit Header Component',
  render: function() {
    return (
    		<div className="page-header">
  				<h1>Subreddit Title<br /><small>Description</small></h1>
				</div>
    	);}
});

module.exports = SubredditHeaderComponent;
