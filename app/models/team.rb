class Team < ApplicationRecord
    has_many :signups
    has_many :users, through: :signups
    has_many :games
    scope :southtx, -> { where(city: ['Houston, TX', 'Austin, TX', 'San Antonio, TX']).order('sport ASC') }
    scope :northtx, -> { where(city: ['Dallas, TX']).order('sport ASC') }

    def team_city_sport
        "#{name} (#{city} - #{sport})"
    end

end
