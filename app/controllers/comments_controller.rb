class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    comment = Comment.find(params[:id])
    render(json: { comment: comment })
  end

  # private
  #
  # def comments_params
  #   params.require(:comment).permit()
  # end

end