class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render json: @tweets
  end

  def show
    tweet = Tweet.find(params[:id])
    render(json: { tweet: tweet })
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content, :media_image, :likes, :retweets)
  end

end