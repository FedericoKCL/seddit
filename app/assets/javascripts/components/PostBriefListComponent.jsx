import React from "react";
import PostBriefComponent from "./PostBriefComponent.jsx";

const displayName = "PostBriefListComponent";
const propTypes = {};

export default class PostBriefListComponent extends React.Component {
	render() {
		return (
			<div>
				{this.props.posts.map(function(post){
					return <PostBriefComponent post={post} comment_count="1" user="BloodyUser" />;
				})}
			</div>
		);
	}
}

PostBriefListComponent.displayName = displayName;
PostBriefListComponent.propTypes = propTypes;
