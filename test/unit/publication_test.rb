# == Schema Information
#
# Table name: publications
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  author_id         :integer
#  publisher_id      :integer
#  questionnaire_id  :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  lib_exported_flag :boolean          default(FALSE)
#  pub_exported_flag :boolean          default(FALSE)
#

require 'test_helper'

class PublicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
