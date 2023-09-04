class LikesController < ApplicationController
  before_action :authenticate_user!  # Asegurarse de que el usuario esté autenticado
  before_action :set_post

  def create
    @like = @post.likes.create(user: current_user)
    redirect_to @post, notice: 'Me gusta registrado correctamente.'
  end

  def dislike
    @post.disliked_by current_user
    redirect_to @post, notice: 'No me gusta registrado correctamente.'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
  
end
