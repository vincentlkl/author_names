class InstitutionRole < ActiveRecord::Base
  enum role: [:admin, :author, :publisher]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :admin
  end

  belongs_to :institution
  belongs_to :user

end
