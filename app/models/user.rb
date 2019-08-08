class User < ApplicationRecord
    has_secure_password
    # has_many :teams through :signups
end
