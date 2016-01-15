class Battlel < ActiveRecord::Base
  validates :pet1, :pet2, :date, presence: true

  # validate :different_owner
 
  # def different_owner
  #   my_pet1 = Pet.find_by(name: pet1)
  #   my_pet2 = Pet.find_by(name: pet2)
  #   if my_pet1.owner==my_pet2.owner
  #     errors.add(:pet2, 'Pet2 is the same owner that pet1')
  #   end
  # end

end
