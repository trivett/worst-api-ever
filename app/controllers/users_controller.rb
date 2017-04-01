class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @Users = User.all
  end

  def show
    @message_ids = @user.messages.map(&:id)
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
