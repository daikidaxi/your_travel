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
    @followings = @user.followings.count
    @followers = @user.followers.count
    @latest_post=Post.where(user_id: params[:id]).order('visited_date DESC, created_at DESC').first
    @posts=Post.where(user_id: params[:id]).order('visited_date DESC, created_at DESC').where.not(id: @latest_post.id) unless @latest_post.nil?
    nationality = Geocoder.search("#{@user.nationality}")
    #グラフの情報,達成率,全体,大陸毎
    total=numberofcontries.to_i
    national=draw_country_data(@user.nationality)
    visit=Post.where(user_id: params[:id]).select(:country).distinct.count + 1 #(国籍分)
    as=Post.where(user_id: params[:id]).select(:country).distinct.where(continent: "AS").count
    eu=Post.where(user_id: params[:id]).select(:country).distinct.where(continent: "EU").count
    af=Post.where(user_id: params[:id]).select(:country).distinct.where(continent: "AF").count
    na=Post.where(user_id: params[:id]).select(:country).distinct.where(continent: "NA").count
    sa=Post.where(user_id: params[:id]).select(:country).distinct.where(continent: "SA").count
    oc=Post.where(user_id: params[:id]).select(:country).distinct.where(continent: "OC").count
    notyet=total-visit
    if national[3]=="AS"
      as += 1
    elsif national[3]=="EU"
      eu += 1
    elsif national[3]=="AF"
      af += 1
    elsif national[3]=="NA"
      na += 1
    elsif national[3]=="SA"
      sa += 1
    elsif national[3]=="OC"
      oc += 1
    end
    @totaldata={"訪問国": visit ,"まだ訪れていない国": notyet}
    @continentdata={"アジア": as, "ヨーロッパ": eu, "アフリカ": af, "北アメリカ": na, "南アメリカ": sa, "オセアニア": oc }
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
