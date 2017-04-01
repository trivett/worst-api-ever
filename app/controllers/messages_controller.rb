class MessagesController < ApplicationController
  before_action :set_message, only: [:show]

  def index
    @user = User.find(params[:user_id])
    sleep @interval
    @messages = @user.messages
  end

  def show
    sleep @interval
  end

  private

    def set_message
      @message = Message.find(params[:id])
    end
end
