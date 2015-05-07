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

require 'test_helper'

class InstitutionRoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
