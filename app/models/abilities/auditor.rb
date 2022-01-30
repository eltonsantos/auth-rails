module Abilities
  class Auditor
    include CanCan::Ability

    def initialize(user)
      can :read, User
      can :read, Car
      can :read, Audity
    end
  end
end