class User < ApplicationRecord

    validates :username, presence: true
    validates :password_digest presence: {message: }
end
