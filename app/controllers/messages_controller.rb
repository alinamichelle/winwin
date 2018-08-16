class MessagesController < ApplicationController

  def index
    @messages = current_user.received_messages
  end

  def show
    @message = Message.find(params[:id])
    @message.update(read: true)
  end

  def create
    @message = Message.new
    @message.content = params["message"]["content"]
    @message.sender = current_user
    @message.receiver_id = params["user_id"].to_i
    if @message.save
      redirect_to @message.receiver
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

  private

  def message_params
    params.require(:message).permit(:content, :user_id)
  end
end
