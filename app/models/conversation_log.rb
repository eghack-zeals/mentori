class ConversationLog < ApplicationRecord
  enum bot: { 0: user, 1: bot }
  belongs_to :user

  has_many :conversation_congtents
end
