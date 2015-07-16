class PostController < ApplicationController
  def view
    @post = Post.find_by(id: params[:id])
    @poster = @post.user.username
    @comments = Comment.where(post_id: @post.id)
    @collection = {}
    @comments.each do |comment|
      @collection[comment.to_json] = comment.user
    end
    @root = root_path # TODO: Refactor out @root
    @subreddit = Subreddit.find(@post.subreddit_id).name
  end

end
