class Make < ApplicationRecord
  has_many :car
  validates :country,presence:true, length: {minimum: 2, maximum:35 }
  validates :name, presence: true,uniqueness: true, length: {minimum:2, maximum: 30}
  def self.search(search)
    if search
      where (["name LIKE ?", "%#{search}%"])
      where (["country LIKE ?", "%#{search}%"])
    else
      all
    end
  end
end
