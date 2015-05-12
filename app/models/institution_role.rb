class InstitutionRole < ActiveRecord::Base
  enum role: [:admin, :staff, :author]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :author
  end

  belongs_to :institution
  belongs_to :user

end
