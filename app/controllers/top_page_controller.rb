class TopPageController < ApplicationController
  require "csv"
  require "wikipedia"
  def home
    #include(:user)すべき？  N+1問題っぽい
    # @users=User.all
    @posts=Post.limit(10).order('visited_date DESC, created_at DESC')
  end

  def countries
    @countries_data=[]
    CSV.foreach("public/countriesdata/contries_data.csv") do |row|
      @countries_data.push([row[0],row[1]])
    end
  end

  def country
    @name = params[:name].to_s
    data=draw_country_data(@name)
    @code = data[1]
    @posts=Post.where(country: @name)
    Wikipedia.Configure {
          domain 'ja.wikipedia.org'
          path   'w/api.php'
        }
    page = Wikipedia.find(@name)
    @info = page.summary

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
