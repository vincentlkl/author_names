# == Schema Information
#
# Table name: institution_roles
#
#  id             :integer          not null, primary key
#  institution_id :integer
#  user_id        :integer
#  role           :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'rails_helper'

RSpec.describe InstitutionRole, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
end
