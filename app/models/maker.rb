class Maker < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: 'ASUS'},
    {id: 3, name: 'BenQ'},
    {id: 4, name: 'Corsair'},
    {id: 5, name: 'Dell'},
    {id: 6, name: 'Endgame Gear'},
    {id: 7, name: 'Final Mouse'},
    {id: 8, name: 'Fnatic Gear'},
    {id: 9, name: 'Glorious'},
    {id: 10, name: 'HyperX'},
    {id: 11, name: 'Logicool'},
    {id: 12, name: 'MSI'},
    {id: 13, name: 'Pulsar'},
    {id: 14, name: 'Razer'},
    {id: 15, name: 'Steel Series'},
    {id: 16, name: 'Vaxee'},
    {id: 17, name: 'Xtrfy'},
    {id: 18, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :mouses
end