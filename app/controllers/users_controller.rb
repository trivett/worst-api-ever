class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
    sleep @interval
  end

  def show
    @message_ids = @user.messages.map(&:id)
    sleep @interval
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
