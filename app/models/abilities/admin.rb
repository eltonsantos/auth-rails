module Abilities
  class Admin
    include CanCan::Ability

    def initialize(user)
      cannot :manage, Car
      can :manage, HomeController
    end
  end
end