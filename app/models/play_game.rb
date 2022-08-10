class PlayGame < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: 'Apex Legends'},
    {id: 3, name: 'Over Watch'},
    {id: 4, name: 'Valorant'},
    {id: 5, name: 'PUBG'},
    {id: 6, name: 'Counter Strike'},
    {id: 7, name: 'Rainbow 6:siege'}
  ]

  include ActiveHash::Associations
  has_many :reviews
end