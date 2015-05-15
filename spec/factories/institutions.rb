# == Schema Information
#
# Table name: institutions
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :text
#  contact_name :string
#  phone        :string
#  email        :string
#  address_1    :string
#  address_2    :string
#  city         :string
#  state        :string
#  postal_code  :string
#  country      :string
#  website      :string
#  logo         :string
#  company_type :string
#  created_at   :datetime
#  updated_at   :datetime
#

FactoryGirl.define do
  factory :institution do
    name "New institution"
  end
end
