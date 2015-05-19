# == Schema Information
#
# Table name: questionnaire_links
#
#  id               :integer          not null, primary key
#  questionnaire_id :integer
#  question_id      :integer
#  position         :integer
#  created_at       :datetime
#  updated_at       :datetime
#

FactoryGirl.define do
  factory :questionnaire_link do
    
  end

end
