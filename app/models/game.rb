class Game < ApplicationRecord
    belongs_to :home_team, class_name: "Team"
    belongs_to :away_team, class_name: "Team"
    
    def converted_datetime
        if date
            date.strftime("%B %d, %Y")
        else
        end
    end


end
