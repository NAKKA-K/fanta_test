class Party < ApplicationRecord
  belongs_to :user

  has_one :character1, class_name: 'Character'
  has_one :character2, class_name: 'Character'
  has_one :character3, class_name: 'Character'
  has_one :character4, class_name: 'Character'
end
