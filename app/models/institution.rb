class Institution < ActiveRecord::Base

  def self.strong_parameters
    columns =[:id, :name, :description,
    :contact_name, :phone, :email, :address_1, :address_2,
    :city, :state, :postal_code, :country, :website,
    :logo, :company_type]
    columns
  end
end
