class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all

  end
  def create
     @message = Message.new(message_params)
    if @message.save
    redirect_to root_path , notice: 'メッセージを保存したよ☆'
    else
    redirect_to root_path , notice: 'メッセージを保存出来なかっためう・・・'
    end
    
  end
  
  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to root_path, notice: 'メッセージが削除されちゃいました・・・'
  end
  
  private
  def message_params
    params.require(:message).permit(:name, :body)
  end
end