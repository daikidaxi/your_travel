class TopPageController < ApplicationController
  def home
    #include(:user)すべき？  N+1問題っぽい
    # @users=User.all
    @posts=Post.limit(10).order('visited_date DESC, created_at DESC')
  end

  def test
    @post=Post.find_by(id: "6")
    @pointlat=64.1265206
    @pointlng=-21.8174392
    @address="アイスランド"
  end
end
