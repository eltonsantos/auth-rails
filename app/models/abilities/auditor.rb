module Abilities
  class Auditor
    include CanCan::Ability

    def initialize(user)
    end
  end
end