module Abilities
  class Auditor
    include CanCan::Ability

    def initialize(user)
      can :read, User
      can :read, Car
    end
  end
end