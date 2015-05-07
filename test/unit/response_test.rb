# == Schema Information
#
# Table name: responses
#
#  id                :integer          not null, primary key
#  questionnaire_id  :integer          not null
#  user_id           :integer          not null
#  form_item_id      :integer          not null
#  response_text     :text
#  lib_exported_flag :boolean          default(FALSE)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  pub_exported_flag :boolean          default(FALSE)
#  publication_id    :integer
#  author_upload     :string(255)
#

require 'test_helper'

class ResponseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
