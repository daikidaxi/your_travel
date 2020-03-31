class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:edit,:create,:update]
  before_action :correct_user,   only: :edit

  def new
    @post = current_user.posts.build #if user_signed_in?
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def show
    @post=Post.find_by(id: params[:id])
  end

  def create
    @post=current_user.posts.build(post_params)
    insert_country_data(@post,@post.country)
    insert_counts(@post)
    if @post.save
      redirect_to post_path(@post), notice:"投稿しました"
    else
      render'posts/new'
    end
  end

  def update
    @post=Post.find_by(id: params[:id])
    @user=User.find_by(id: @post.user_id)
    if @post.update(post_params)
      redirect_to post_path(@post), notice: "情報を更新しました" 
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path, notice: "投稿を削除しました" 
  end

  # def destroy
  #   @post=Post.find(params[:id])
  #   @post.destroy
    
  #   flash[:success] = "投稿を削除しました"
  #   redirect_to request.referrer || root_url,notice: "情報を更新sakujooooしました" 
  #   # @post = Post.find_by(id: params[:id])
  #   # if @post.destroy
  #   #   redirect_to root_path, notice: "削除しました" 
  #   # else
  #   #   render 'edit'
  #   # end
  # end

  private
    def post_params
      params.require(:post).permit(:country, :content, :visited_date, :photo, :latitude, :longitude)
    end

    def correct_user
      @post = current_user.posts.find_by(id: params[:id])
      redirect_to root_url if @post.nil?
    end
end
