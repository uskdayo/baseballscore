class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :year, null: false
      t.integer :month, null: false
      t.integer :day, null: false
      t.string :team, null: false
      t.string :opponent
      t.integer :run, null: false
      t.integer :given, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
