class PetPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    user.id==record.user_id
  end

  def destroy?
    update?
  end

end