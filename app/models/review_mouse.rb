class ReviewMouse < ApplicationRecord
  belongs_to :mouse
  belongs_to :review

  validates :mouse_id
  validates :review_id
end
