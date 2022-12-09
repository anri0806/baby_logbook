class User < ActiveRecord::Base
    has_many :babies
    has_secure_password

    validates :username, precense: true
end 