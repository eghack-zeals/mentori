class ConversationLog < ApplicationRecord
  belongs_to :user

  has_many :conversation_congtents
end
