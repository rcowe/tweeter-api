class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    user = User.find(params[:id])
    render json: { status: 200, user: user }
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: { user: user}
    else
      render(status: 422, json: { user: user, errors: user.errors })
    end
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render(status: 204)

    # tweet = Tweet.all
    # if tweet.update(tweet_params)
    #   render json: { tweet: tweet}
    # else
    #   render(status: 422, json: { tweet: tweet, errors: tweet.errors })
    # end
  end

  def destroy
    user = User.destroy(params[:id])
    render(status: 204)
  end

  private

  def user_params
    params.require(:user).permit(:image, :name, :username, :location, :bio, :create_date, :followers, :following)
  end

end