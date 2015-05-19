# == Schema Information
#
# Table name: questionnaires
#
#  id             :integer          not null, primary key
#  name           :string
#  description    :text
#  created_at     :datetime
#  updated_at     :datetime
#  institution_id :integer
#

FactoryGirl.define do
  factory :questionnaire do
    
  end

end
