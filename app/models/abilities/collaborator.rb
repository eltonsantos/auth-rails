module Abilities
  class Collaborator
    include CanCan::Ability

    def initialize(user)
    end
  end
end