class LikesController < ApplicationController
  def create
    @post =Post.find_by(params[:post_id])
    like=current_user.likes.build(post_id: params[:post_id])
    like.save
    render "create.js.erb"
    # redirect_to post_path(@post.id)
    # リロードではなく非同期
  end

  def destroy
    @post =Post.find_by(params[:post_id])
    like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    like.destroy
    render "destroy.js.erb"
    # redirect_to post_path(@post.id)
    # リロードではなく非同期
  end

end