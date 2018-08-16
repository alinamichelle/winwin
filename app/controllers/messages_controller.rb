class MessagesController < ApplicationController

  def index
    # show all chats each chat has a sender and

    #@messages = Message.where(sender: current_user) || Message.where(receiver: current_user)
    @users = current_user.sent_messages.map{ |mess| mess.receiver.id } + current_user.received_messages.map{ |mess| mess.sender.id }
    @users = @users.uniq
    @messages = []
    @users.each do |user_id|
      puts user_id
      #@messages << current_user.received_messages.where(sender_id: user_id).last ||current_user.sent_messages.where(receiver_id: user_id).last
      @messages << Message.where("(sender_id = ? AND receiver_id = ?) OR (sender_id= ? AND receiver_id = ?)", current_user.id, user_id, user_id, current_user.id).last
    end
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
