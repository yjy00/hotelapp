class ChatsController < ApplicationController
  def index
    @chat = Chat.new
    @chats = Chat.order('created_at DESC')
  end

  def create
    @chat = Chat.new(chat_params)
    if @chat.save
      ActionCable.server.broadcast 'chat_channel', { content: @chat, name: @chat.by, from: @chat.from }
    else
      render :index
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:from_id, :by, :message)
  end
end
