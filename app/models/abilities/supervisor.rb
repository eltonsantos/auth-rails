module Abilities
  class Supervisor
    include CanCan::Ability

    def initialize(user)
      can :supervisor, Menu
    end
  end
end