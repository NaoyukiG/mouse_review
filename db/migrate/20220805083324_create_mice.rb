class CreateMice < ActiveRecord::Migration[6.0]
  def change
    create_table :mice do |t|

      t.timestamps
    end
  end
end
