class CreateCommanderDamages < ActiveRecord::Migration[5.2]
  def change
    create_table :commander_damages do |t|
      t.integer :player_id
      t.integer :attacker_id
      t.integer :amount
      t.integer :game_id

      t.timestamps
    end
  end
end
