class Team < ApplicationRecord
    has_many :signups
    has_many :users, through: :signups
    # has_many :matches


  def self.southtx
      where(city: ['Houston, TX', 'Austin, TX', 'San Antonio, TX'])
  end

  def self.northtx
      where(city: ['Dallas, TX'])
  end

end
