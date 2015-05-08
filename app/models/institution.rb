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

class Institution < ActiveRecord::Base


  def self.strong_parameters
    columns =[:id, :name, :description,
    :contact_name, :phone, :email, :address_1, :address_2,
    :city, :state, :postal_code, :country, :website,
    :logo, :company_type]
    columns
  end
end
