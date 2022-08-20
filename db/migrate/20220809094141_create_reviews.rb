class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :grip_type_id, null: false
      t.integer :play_game_id, null: false
      t.integer :rating,       null: false, default: 0
      t.text :usability,       null: false
      t.references :user,      null: false, foreign_key: true
      t.references :mouse,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
