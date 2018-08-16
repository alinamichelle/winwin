class MessagesController < ApplicationController

  def index
    @messages = current_user.received_messages
  end

  def show #conversation
    @message_new = Message.new
    message = Message.find(params[:id])
    if message.sender == current_user
      @user_receiver = message.receiver
    else
      @user_receiver = message.sender
    end
    @messages = Message.where(receiver: [@user_receiver, current_user], sender: [@user_receiver, current_user])


    # @message = Message.find(params[:id])
    # @message.update(read: true)
  end

  def create
    @message = Message.new
    @message.content = params["message"]["content"]
    @message.sender = current_user
    @message.receiver_id = params["user_id"].to_i
    if @message.save
      redirect_to user_message_path(user_id: current_user,id: @message.id)
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
