class StaticPagesController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
    # TODO: when doing the db migration add info of the user
  end
end
