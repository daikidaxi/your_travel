class TopPageController < ApplicationController
  def home
    #include(:user)すべき？  N+1問題っぽい
    # @users=User.all
    @posts=Post.limit(10).order('visited_date DESC, created_at DESC')
  end

  def test
    @posts=Post.where('latitude IS NOT NULL')

  end
end
