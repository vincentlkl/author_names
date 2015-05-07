# == Schema Information
#
# Table name: authors
#
#  id           :integer          not null, primary key
#  phone        :string(255)      not null
#  email        :string(255)      not null
#  first_name   :string(255)      not null
#  last_name    :string(255)      not null
#  address_1    :string(150)      not null
#  address_2    :string(150)
#  city         :string(100)      not null
#  state        :string(100)      not null
#  postal_code  :string(30)       not null
#  country      :string(255)      not null
#  publisher_id :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
