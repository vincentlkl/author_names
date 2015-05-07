class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|

    t.string :name
    t.text   :description
    t.string :contact_name
    t.string :phone
    t.string :email
    t.string :address_1
    t.string :address_2
    t.string :city
    t.string :state
    t.string :postal_code
    t.string :country
    t.string :website
    t.string :logo
    t.string :company_type
    t.timestamps
    end
  end
end
