class CreateRegistrationsTable < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :address
      t.string :favorite_player
      t.string :player_postion
      t.integer :jersey_number


    end
  end
end
