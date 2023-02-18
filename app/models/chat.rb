class Chat < ApplicationRecord
    has_many :messages, dependent: :destroy
    has_many :users, through: :messages

    scope :with_message_content, ->(content) {joins(:messages).where('messages.content LIKE ?', "%#{content}%")}
end
