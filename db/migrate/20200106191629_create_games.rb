class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :playstyle

      t.timestamps
    end
  end
end
