class Team < ApplicationRecord
    has_many :signups
    has_many :users, through: :signups
    has_many :games


  def self.southtx
      where(city: ['Houston, TX', 'Austin, TX', 'San Antonio, TX']).order('name ASC')
  end

  def self.northtx
      where(city: ['Dallas, TX']).order('name ASC')
  end

  def team_city
      "#{name} (#{city})"
  end 
end
