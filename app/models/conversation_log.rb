class ConversationLog < ApplicationRecord
  enum bot: { 'user': 0, 'bot': 1 }
  # belongs_to :user

  has_many :conversation_contents
end
