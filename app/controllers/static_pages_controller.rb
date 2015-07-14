class StaticPagesController < ApplicationController
  include ApplicationHelper
  
  def index
    @subreddits = subreddits
  end
end
