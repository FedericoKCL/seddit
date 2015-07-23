class StaticPagesController < ApplicationController
  require 'json'

  def index
    @posts = Post.all.order(created_at: :desc)
    # TODO: when doing the db migration add info of the user
    @posts = @posts.to_json
  end
end
