class Software < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: 'ๆใ'},
    {id: 3, name: '็กใ'}
  ]

  include ActiveHash::Associations
  has_many :mouses
end