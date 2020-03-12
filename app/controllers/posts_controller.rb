class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:edit,:create,:update]

  def new
    @post = current_user.posts.build #if user_signed_in?
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def index
  end

  def show
    @post=Post.find_by(id: params[:id])
  end

  def create
    @post=current_user.posts.build(post_params)
    if @post.save
      redirect_to root_url, notice:"投稿しました。"
    else
      render'posts/new'
    end
  end

  def update
    @post=Post.find_by(id: params[:id])
    @user=User.find_by(id: @post.user_id)
    if @post.update(post_params)
      redirect_to root_url, notice: "情報を更新しました" 
      # redirect_back(fallback_location: root_url)
      #redirect_to @post#users_show_path, controller: :users, action: :show
    else
      render 'edit'
    end
  end

  private
    def post_params
      params.require(:post).permit(:country,:content,:visited_date)
    end

    def correct_user
      @post = current_user.posts.find_by(id: params[:id])
      redirect_to root_url if @post.nil?
    end
end
