class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :city
      t.string :location
      t.datetime :date
      t.integer :home_team_id, foreign_key: { to_table: :teams}
      t.integer :away_team_id, foreign_key: { to_table: :teams}

      t.timestamps
    end
  end
end
