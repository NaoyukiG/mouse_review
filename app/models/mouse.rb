class Mouse < ApplicationRecord
  belongs_to :user
  belongs_to :Maker
  belongs_to :Connection
  belongs_to :Symmetry
  belongs_to :Software

  with_options presence: true do
    validates :name
    validates :maker_id, numericality: {other_than: 1, message: "can't be blank"}
    validates :connection_id, numericality: {other_than: 1, message: "can't be blank"}, allow_blank: true
    validates :symmetry_id, numericality: {other_than: 1, message: "can't be blank"}, allow_blank: true
    validates :weight
    validates :dpi
    validates :software_id, numericality: {other_than: 1, message: "can't be blank"}, allow_blank: true
    validates :order_url
  end
end
