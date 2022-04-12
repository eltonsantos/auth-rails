class RelationshipStatus < EnumerateIt::Base
  associate_values(
    :single,
    :married,
    :divorced
  )
end
