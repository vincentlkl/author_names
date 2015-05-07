# == Schema Information
#
# Table name: libraries
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
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Library < ActiveRecord::Base
  attr_accessible :name, :contact_name, :phone, :email, :address_1, :address_2, :city, :state, :postal_code, :country, :website, :description
  
  has_many :users, :dependent => :destroy
  
  validates_presence_of :name, :contact_name, :phone, :email, :address_1, :city, :state, :postal_code, :country
  
  def to_s
    self.name
  end
  
  def all_staff
    User.find(:all, :conditions => {:admin => true, :library_id => self.id})
  end
  
  def all_admin
    User.find(:all, :conditions => {:admin => true, :library_id => self.id})
  end
end
