# == Schema Information
#
# Table name: questionnaires
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  description  :text
#  version      :string(255)
#  publisher_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class QuestionnaireTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
