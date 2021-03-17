class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render json: @tweets.to_json(include: :comments)
  end

  def show
    tweet = Tweet.find(params[:id])
    render json: { status: 200, tweet: tweet }
  end

  def create
    tweet = Tweet.new(tweet_params)

    if tweet.save
      render json: { tweet: tweet}
    else
      render(status: 422, json: { tweet: tweet, errors: tweet.errors })
    end
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
    render(status: 204)

    # tweet = Tweet.all
    # if tweet.update(tweet_params)
    #   render json: { tweet: tweet}
    # else
    #   render(status: 422, json: { tweet: tweet, errors: tweet.errors })
    # end
  end

  def destroy
    tweet = Tweet.destroy(params[:id])
    render(status: 204)
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content, :media_image, :likes, :retweets, :user_id)
  end

end