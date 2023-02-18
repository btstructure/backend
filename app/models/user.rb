class User < ApplicationRecord
    #encrypts the password, install bcrypt
    has_secure_password

    has_many :messages, dependent: :destroy
    has_many :chats

    validates :username, presence: true, length: {in: 6..20}, uniqueness: true
    validates :password, presence: true, length: {in: 6..20}, confirmation: true
    validate :password_complexity

    private 

    def password_complexity
        return if password.blank?

        unless password.match?(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+/)
            errors.add :password, 'must include one lowercase, one capital, and one digit'
        end
    end
    
end
