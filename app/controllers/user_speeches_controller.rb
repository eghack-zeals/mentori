require 'net/http'
class UserSpeechesController < ApplicationController
  before_action :set_user

  def speak
    create_user_log(params[:message])
    create_bot_log(hoge(params[:message]))
    @conversation_logs = collect_logs
    redirect_to demo_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def collect_logs
    ConversationLog.last(5)
  end

  def create_user_log(user_speech_text)
    cl = ConversationLog.create(bot: 0, user_id: @user.id)
    cl.conversation_contents.create(text: user_speech_text)
  end

  def create_bot_log(bot_reply_text)
    cl = ConversationLog.create(bot: 1)
    cl.conversation_contents.create(text: bot_reply_text)
  end

  def hoge(user_speech)
    res = Net::HTTP.post_form(URI.parse("https://mentori-flask.herokuapp.com/post"), {answer: user_speech})
    res.body.force_encoding("utf-8")
  end
end
