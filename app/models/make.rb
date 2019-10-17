class Make < ApplicationRecord
  has_many :car
  validates :country,presence:true, length: {minimum: 2, maximum:35 }
  validates :name, presence: true,uniqueness: true, length: {minimum:2, maximum: 30}


end
