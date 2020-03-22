class UsersController < ApplicationController
  def new
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @users=User.all
  end

  def show
    @user=User.find_by(id: params[:id])
    @latest_post=Post.where(user_id: params[:id]).order('visited_date DESC, created_at DESC').first
    @posts=Post.where(user_id: params[:id]).order('visited_date DESC, created_at DESC').where.not(id: @latest_post.id)
  end

  # def update
  #   @user = User.find_by(id: params[:id])
  #   #画像データが送信された場合
  #   if params[:image1
  #     #データベースに保存するファイル名はユーザーのid.jpgとする
  #     @user.image_name = "#{@user.id}.jpg"
  #     image = params[:image]
  #     File.binwrite("public/user_images/#{@user.image_name}",image.read)
  #   end
  # end

  def follows
    @user = User.find(params[:id])
    @users = @user.followings
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email,:password, :password_confirmation, :image, :remember_digest)
  end
end
