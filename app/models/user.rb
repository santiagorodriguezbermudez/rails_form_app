class User < ApplicationRecord
  validates :username, presence: { message: "username can't be empty" }
  validates :email, presence: { message: "username can't be empty" },
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Please enter a valid email' }
  validates :password, presence: { message: "username can't be empty" },
                       length: { minimum: 6, message: 'password has to have a minimum of 6 characters' }
end
