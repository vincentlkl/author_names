# == Schema Information
#
# Table name: form_item_groups
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  publisher_id     :integer
#  questionnaire_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class FormItemGroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
