class Symmetry < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: '左右対称'},
    {id: 3, name: '左右非対称'}
  ]

  include ActiveHash::Associations
  has_many :mouses
end