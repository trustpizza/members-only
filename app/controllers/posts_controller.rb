class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def new
    @user = User.new
  end
end
