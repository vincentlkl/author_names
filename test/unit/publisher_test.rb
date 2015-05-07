# == Schema Information
#
# Table name: publishers
#
#  id           :integer          not null, primary key
#  name         :string(255)      not null
#  description  :text
#  contact_name :string(255)      not null
#  phone        :string(255)      not null
#  email        :string(255)      not null
#  address_1    :string(150)      not null
#  address_2    :string(150)
#  city         :string(100)      not null
#  state        :string(100)      not null
#  postal_code  :string(30)       not null
#  country      :string(255)      not null
#  website      :string(255)
#  logo         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class PublisherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
