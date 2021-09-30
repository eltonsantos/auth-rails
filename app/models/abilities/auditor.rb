module Abilities
  class Auditor
    include CanCan::Ability

    def initialize(user)
      can :read, User
    end
  end
end