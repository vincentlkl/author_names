# == Schema Information
#
# Table name: questions
#
#  id             :integer          not null, primary key
#  name           :string
#  question_type  :string
#  created_at     :datetime
#  updated_at     :datetime
#  institution_id :integer
#

FactoryGirl.define do
  factory :question do
    
  end

end
