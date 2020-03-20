class TopPageController < ApplicationController
  require "csv"
  def home
    #include(:user)すべき？  N+1問題っぽい
    # @users=User.all
    @posts=Post.limit(10).order('visited_date DESC, created_at DESC')
  end

  def test
    @posts=Post.where('latitude IS NOT NULL')
    nationality="アンドラ"
    @kakunou=draw_country_data(nationality)
    @first=[]
    @po=Post.find_by(id: 24)

    @sql=Post.where(user_id: 10).where(id: 17)

  end
end
