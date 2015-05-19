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

class QuestionnaireLink < ActiveRecord::Base
  belongs_to :questionnaire
  belongs_to :question
  acts_as_list scope: :questionnaire
end
