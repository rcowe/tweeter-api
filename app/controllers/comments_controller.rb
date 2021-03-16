class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    render json: @comments
  end

  private

  def set_tweet
    @comment = Comment.find(params[:id])
  end

end