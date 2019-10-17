class Car < ApplicationRecord
  has_and_belongs_to_many :parts
  has_one :makes
  validates :vin_number, uniqueness: true,length: {minimum: 19,maximum: 23}
  validates :model, presence: true, uniqueness: true,length: {minimum: 2,maximum: 20,greater_than: 0.0}
  validates :many_part, presence: true, numericality: { only_integer: true ,greater_than: 0.0}
  validates :make, presence:true, length: {minimum:2 ,maximum: 35}
  def self.search(search)
    if search
      where (["model LIKE ?", "%#{search}%"])
      where (["vin_number LIKE ?", "%#{search}%"])
      where (["make LIKE ?", "%#{search}%"])
    else
      all
    end
  end

end


