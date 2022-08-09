class Mouse < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :maker
  belongs_to :connection
  belongs_to :symmetry
  belongs_to :software
  has_one_attached :image
  belongs_to :user
  has_many :review_mouses
  has_many :reviews, through: :review_mouses

  with_options presence: true do
    validates :name
    validates :weight
    validates :dpi
    validates :order_url
  end

  with_options presence: true,  numericality: {other_than: 1, message: "can't be blank"} do
    validates :maker_id
    validates :connection_id
    validates :symmetry_id
    validates :software_id
  end
end
