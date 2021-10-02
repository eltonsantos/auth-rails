module Abilities
  class Manager
    include CanCan::Ability

    def initialize(user)
      can :manage, Car
    end
  end
end