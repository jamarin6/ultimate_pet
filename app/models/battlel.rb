class Battlel < ActiveRecord::Base
  validates :pet1, :pet2, :date, presence: true

end
