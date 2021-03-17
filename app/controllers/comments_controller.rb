class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    comment = Comment.find(params[:id])
    render(json: { comment: comment })
  end

  def create
    comment = Comment.new(comment_params)

    if comment.save
      render json: { comment: comment}
    else
      render(status: 422, json: { comment: comment, errors: comment.errors})
    end
  end

  def update
    comment = Comment.find(params[:id])
    comment.update(comment_params)
    render(status: 204)
  end

  def destroy
    comment = Comment.destroy(params[:id])
    render(status: 204)
  end

  private

  def comment_params
    params.require(:comment).permit(:username, :content, :tweet_id)
  end

end