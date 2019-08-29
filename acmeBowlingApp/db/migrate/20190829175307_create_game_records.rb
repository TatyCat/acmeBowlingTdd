class CreateGameRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :game_records do |t|
      t.string :date_of_game
      t.float :total_score
      t.string :frame_data

      t.timestamps
    end
  end
end
