module ApplicationHelper
  require "csv"
  
  # "国名"  =>  ["国名","国際コード","英語名","大陸コード"]
  def draw_country_data(country)
    data_list = CSV.read("public/countriesdata/contries_data.csv")
    for i in 0..data_list.length-1 do
      if data_list[i][0]==country
        data=data_list[i]
        break
      end
    end
    return data
  end

  # 投稿時にデータベースに入力
  def insert_country_data(post,country)
    post.country_code=draw_country_data(country)[1]
    post.country_en=draw_country_data(country)[2]
    post.continent=draw_country_data(country)[3]
  end

  # 訪問数の入力 (投稿した順ではなく日付順にすべき)
  def insert_counts(post)
    otherposts=Post.where(country: post.country).where(user_id: post.user_id)
    post.counts=otherposts.length+1
  end

  def allcontries
    contries=[]
    CSV.foreach("public/countriesdata/contries_data.csv") do |row|
      contries.push(row[0])
    end
    return contries
  end

  def numberofcontries
    allcontries.length
  end

  def check_continent(str)
    
  end

  # 渡されたユーザーでログインする
  # def log_in(user)
  #   session[:user_id] = user.id
  # end

  # 現在ログインしているユーザーを返す (ユーザーがログイン中の場合のみ)
  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end

  # ユーザーがログインしていればtrue、その他ならfalseを返す
  def logged_in?
    !current_user.nil?
  end

end

