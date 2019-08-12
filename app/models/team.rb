class Team < ApplicationRecord
    has_many :signups
    has_many :users, through: :signups
    # has_many :matches
end
