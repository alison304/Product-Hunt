class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end

    def index?
      true
    end

    def new?
      true
    end

    def show?
      true
    end

    def create?
      # user.admin es igual user.admin?
      user.admin==true
    end

    def update?
      #user.admin?
      user.admin==true
      true
    end

    def destroy?
      user.admin?
    end
  end
end
