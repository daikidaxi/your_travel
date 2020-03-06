class UsersController < ApplicationController
  
  def index
    @users=User.all
  end

  def show
    @user=User.find_by(id: params[:id])
    @posts=Post.where(user_id: params[:id]).order('visited_date DESC, created_at DESC')
  end

  # def update
  #   @user = User.find_by(id: params[:id])
  #   #画像データが送信された場合
  #   if params[:image]
  #     #データベースに保存するファイル名はユーザーのid.jpgとする
  #     @user.image_name = "#{@user.id}.jpg"
  #     image = params[:image]
  #     File.binwrite("public/user_images/#{@user.image_name}",image.read)
  #   end
  # end
  private
  def user_params
    params.require(:user).permit(:name, :email,:password, :password_confirmation, :image, :remember_digest)
  end
end
