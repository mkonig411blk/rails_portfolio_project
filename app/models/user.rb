class User < ApplicationRecord
    validates :name, presence: true, format: { without: /[0-9]/, message: "does not allow numbers" }
    validates :email, uniqueness: true
    validates :password, presence: true, length: { minimum: 8, message: "must be at least 8 characters" }
    has_secure_password
    has_many :signups
    has_many :teams, through: :signups
end
