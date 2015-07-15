class PostController < ApplicationController
  include ApplicationHelper

  def view
    @subreddits = subreddits
    @post = Post.find_by(id: params[:id])
    @comments = Comment.where(post_id: @post.id)
    @collection = {}
    @comments.each do |comment|
      @collection[comment.to_json] = comment.user
    end
    @collection
    @root = root_path
  end

end
