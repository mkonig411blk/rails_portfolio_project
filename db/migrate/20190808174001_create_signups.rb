class CreateSignups < ActiveRecord::Migration[5.2]
  def change
    create_table :signups do |t|
      t.belongs_to :team, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :skill_level

      t.timestamps
    end
  end
end
