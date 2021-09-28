module Abilities
  class Collaborator
    include CanCan::Ability

    def initialize(user)
      cannot :manage, Car
      can :manage, Collaborator
    end
  end
end