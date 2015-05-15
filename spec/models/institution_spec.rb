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

require 'rails_helper'

RSpec.describe Institution, type: :model do
  it "must have a name" do
    invalid_institution = FactoryGirl.build(:institution, {:name => nil})
    expect(invalid_institution.valid?).to be false
  end
end
