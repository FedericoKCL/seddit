class PostController < ApplicationController
  include ApplicationHelper

  def view
    @subreddits = subreddits
    @post = Post.find_by(id: params[:id])
  end
  
end
