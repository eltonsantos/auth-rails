class Audity < Audited::Audit
 belongs_to :user, optional: true
end