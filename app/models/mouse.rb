class Mouse < ApplicationRecord
  belongs_to :user
  belongs_to :Maker
  belongs_to :Connection

  with_options presence: true do
    validates :name
    validates :maker_id, numericality: {other_than: 1, message: "can't be blank"}
    validates :connection_id, numericality: {other_than: 1, message: "can't be blank"}
  end
end
