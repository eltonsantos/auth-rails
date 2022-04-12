class Role < EnumerateIt::Base
  associate_values(
    :superadmin,
    :auditor,
    :manager,
    :registred
  )
end
