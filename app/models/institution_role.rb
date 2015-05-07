# == Schema Information
#
# Table name: institution_roles
#
#  id             :integer          not null, primary key
#  institution_id :integer
#  user_id        :integer
#  role           :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class InstitutionRole < ActiveRecord::Base
  belongs_to :institution
  belongs_to :user
end
