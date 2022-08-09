class GripType < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: 'つまみ持ち'},
    {id: 3, name: '掴み持ち'},
    {id: 4, name: '掴みかぶせ持ち'},
    {id: 5, name: 'かぶせ持ち'}
  ]

  include ActiveHash::Associations
  has_many :reviews
end