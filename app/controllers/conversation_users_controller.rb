class ConversationUsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_conversation

  def create
    @conversation_user = @conversation.conversation_users.where(user_id: current_user.id).first_or_create
    redirect_to @conversation
  end

  def destroy
    @conversation_user = @conversation.conversation_users.where(user_id: current_user.id).destroy_all
    redirect_to conversations_path
  end

  private
    def set_conversation
      @conversation = Conversation.find(params[:conversation_id])
    end
end
