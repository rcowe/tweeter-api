class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    user = User.find(params[:id])
    render(json: { user: user })
  end

  # private
  #
  # def users_params
  #   params.require(:user).permit()
  # end

end