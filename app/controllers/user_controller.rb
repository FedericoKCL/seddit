class UserController < ApplicationController
  require 'json'
  # GET /u/:username
  def view
    @user = User.find_by(username: params[:username])
    @user = @user.to_json
  end
end
