class Car < ApplicationRecord
  has_and_belongs_to_many :parts
  has_one :makes



end
