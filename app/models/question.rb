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

class Question < ActiveRecord::Base
  has_many :questionnaire_links
  has_many :questionnaires, through: :questionnaire_links

  def self.strong_parameters
    columns =[:id, :name, :question_type, :institution_id]
    columns
  end
end
