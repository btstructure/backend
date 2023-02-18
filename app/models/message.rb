class Message < ApplicationRecord
    belongs_to :user
    belongs_to :chat

    validates :message, presence: true, length: {in: 1..100}
end
