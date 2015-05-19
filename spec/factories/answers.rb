# == Schema Information
#
# Table name: answers
#
#  id               :integer          not null, primary key
#  questionnaire_id :integer
#  questions        :hstore
#  created_at       :datetime
#  updated_at       :datetime
#

FactoryGirl.define do
  factory :answer do
    
  end

end
