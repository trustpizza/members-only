class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_member.posts.build(post_params)

    respond_to do |format|
      if @post.save
        puts 'hi'
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end
