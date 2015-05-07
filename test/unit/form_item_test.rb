# == Schema Information
#
# Table name: form_items
#
#  id                 :integer          not null, primary key
#  field_name         :string(255)      not null
#  display_text       :text
#  field_type         :string(255)      not null
#  field_options      :text
#  required           :boolean          default(FALSE)
#  publisher_id       :integer
#  form_item_group_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class FormItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
