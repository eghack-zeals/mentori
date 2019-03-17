class StaticsController < ApplicationController
  before_action :authenticate_user!, except: [:top]

  def top; end
  def demo
    @message_logs = collect_logs
  end

  private

  def collect_logs
    ConversationLog.last(5)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
