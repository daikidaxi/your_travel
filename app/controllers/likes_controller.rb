class LikesController < ApplicationController
  def create
    @post =Post.find(params[:post_id])
    like=current_user.likes.build(post_id: params[:post_id])
    like.save

  end
  def destroy
    @post =Post.find(params[:post_id])
    like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    like.destroy

  end
end