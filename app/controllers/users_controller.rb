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
    @posts=Post.where(user_id: params[:id]).order('visited_date DESC, created_at DESC').where.not(id: @latest_post.id) unless @latest_post.nil?
    @nationality = Geocoder.search("#{@user.nationality}")
    #グラフの情報,達成率,全体,大陸毎
    total=numberofcontries.to_i
    national=draw_country_data(@user.nationality)
    visit=Post.where(user_id: params[:id]).select(:country).distinct.count + 1 #(国籍分)
    @AS=Post.where(user_id: params[:id]).select(:country).distinct.where(continent: "AS").count
    @EU=Post.where(user_id: params[:id]).select(:country).distinct.where(continent: "EU").count
    @AF=Post.where(user_id: params[:id]).select(:country).distinct.where(continent: "AF").count
    @NA=Post.where(user_id: params[:id]).select(:country).distinct.where(continent: "NA").count
    @SA=Post.where(user_id: params[:id]).select(:country).distinct.where(continent: "SA").count
    @OC=Post.where(user_id: params[:id]).select(:country).distinct.where(continent: "OC").count
    notyet=total-visit
    if national[3]=="AS"
      @AS += 1
    elsif national[3]=="EU"
      @EU += 1
    elsif national[3]=="AF"
      @AF += 1
    elsif national[3]=="NA"
      @NA += 1
    elsif national[3]=="SA"
      @SA += 1
    elsif national[3]=="OC"
      @OC += 1
    end
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
