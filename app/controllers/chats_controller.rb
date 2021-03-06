# frozen_string_literal: true

class ChatsController < ApplicationController
  def index
    @chats = Chat.includes(image_attachment: :blob).order('created_at DESC')
    @chat = Chat.new
  end

  def create
    @chat = Chat.new(chat_params)
    respond_to do |format|
      if @chat.save
        format.html { redirect_to chats_path }
        format.js
      else
        format.html { render :index }
        format.js { render :errors }
      end
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:from_id, :by, :message, :image)
  end
end
