class User < ActiveRecord::Base
    has_secure_password
    has_many :babies

    validates :username, presence: true
end 