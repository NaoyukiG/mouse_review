class Connection < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: '無線'},
    {id: 3, name: '有線'}
  ]

  include ActiveHash::Associations
  has_many :mouses
end