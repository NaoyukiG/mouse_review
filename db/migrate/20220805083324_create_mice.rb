class CreateMice < ActiveRecord::Migration[6.0]
  def change
    create_table :mice do |t|

      t.string :name,           null: false
      t.integer :maker_id,      null: false
      t.integer :connection_id, null: false
      t.integer :symmetry_id,   null: false
      t.string :weight,         null: false
      t.string :dpi,            null: false
      t.integer :software_id,   null: false
      t.text :software_url
      t.text :order_url,        null: false
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
