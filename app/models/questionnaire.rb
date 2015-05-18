# == Schema Information
#
# Table name: questionnaires
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Questionnaire < ActiveRecord::Base
  has_many :questionnaire_links
  has_many :questions, through: :questionnaire_links

  def self.strong_parameters
    columns =[:id, :name, :description, question_ids: []]
    columns
  end
end
