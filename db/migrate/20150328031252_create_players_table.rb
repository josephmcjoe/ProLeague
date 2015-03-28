class CreatePlayersTable < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :team_id
      t.timestamps null: false
    end
  end
end
