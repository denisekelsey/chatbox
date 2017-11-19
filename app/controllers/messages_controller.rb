class MessagesController < ApplicationController

  def index
    @message = Message.new
    @messages = Message.order(:id).all
  end

  def create
    Message.create(message_params)
    redirect_to root_url
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

end
