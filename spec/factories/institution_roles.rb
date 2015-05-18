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

FactoryGirl.define do
  factory :institution_role do
    
  end

end
