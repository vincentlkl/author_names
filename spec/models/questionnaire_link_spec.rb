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

require 'rails_helper'

RSpec.describe QuestionnaireLink, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
