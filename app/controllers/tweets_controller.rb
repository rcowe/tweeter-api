class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render json: @tweets
  end

  def show
    tweet = Tweet.find(params[:id])
    render(json: { tweet: tweet })
  end

  # private

  # def set_tweet
  #   @tweet = Tweet.find(params[:id])
  # end

end