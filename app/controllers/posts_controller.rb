class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:edit,:create,:update]
  def new
    @post = current_user.posts.build #if user_signed_in?
  end

  def edit
    
  end


  def index
  end

  def create
    @post=current_user.posts.build(post_params)
    if @post.save
      redirect_to root_url, notice:"投稿しました。"
    else
      flash={danger: "〜〜失敗"}
      render'new'
    end
  end

  def update

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
