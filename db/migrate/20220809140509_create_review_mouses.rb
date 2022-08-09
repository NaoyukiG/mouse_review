class CreateReviewMouses < ActiveRecord::Migration[6.0]
  def change
    create_table :review_mouses do |t|

      t.references :mouse,   null: false, foreign_key: true
      t.references :review,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
