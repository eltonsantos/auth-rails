module Abilities
  class Collaborator
    include CanCan::Ability

    def initialize(user)
      can :collaborator, Menu
    end
  end
end