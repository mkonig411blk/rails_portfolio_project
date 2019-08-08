class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :sport
      t.string :city
      t.string :practice_location
      t.string :practice_days

      t.timestamps
    end
  end
end
