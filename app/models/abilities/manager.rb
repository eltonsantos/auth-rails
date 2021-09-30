module Abilities
  class Manager
    include CanCan::Ability

    def initialize(user)
      can :read, Car
    end
  end
end