class Part < ApplicationRecord
  has_and_belongs_to_many :cars
  validates :name, presence: true,uniqueness: true, length: {minimum:2, maximum: 30}
  def self.search(search)
    if search
      where (["name LIKE ?", "%#{search}%"])
    else
      all
    end
  end

end
