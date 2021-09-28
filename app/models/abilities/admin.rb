module Abilities
  class Admin
    include CanCan::Ability

    def initialize(user)

      cannot :manage, Car
      cannot :supervisor, Menu
      cannot :collaborator, Menu
      can :admin, Menu
   
    end
  end
end