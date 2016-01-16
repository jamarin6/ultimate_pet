class Pet < ActiveRecord::Base
  belongs_to :user

  def is_in_battlel_today?
    if Battlel.where(pet1: name, created_at: Date.today.beginning_of_day..Date.today.end_of_day).any? || Battlel.where(pet2: name, created_at: Date.today.beginning_of_day..Date.today.end_of_day).any?
      return true
    else
      return false
    end
  end
end
