module Abilities
  class Registred
    include CanCan::Ability

    def initialize(user)
      can :manage, Car
    end
  end
end