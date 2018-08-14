class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def create
    @message = Message.new(params[])
    @message.receiver = Message.find(params[:id])
    @message.sender = current_user
      if @message.save
       say that message is sent
      else
       say the opposite
      end
  end

  def new
    @message = Message.new
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to messages_path
  end

  def save
    @message = Message.save
  end
end
