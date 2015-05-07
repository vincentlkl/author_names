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

class Publisher < ActiveRecord::Base
  attr_accessible :name, :contact_name, :phone, :email, :address_1, :address_2, :city, :state, :postal_code, :country, :website, :description, :logo, :remove_logo
  
  has_many :users, :dependent => :destroy
  has_many :questionnaires, :dependent => :destroy
  has_many :authors, :dependent => :destroy
  has_many :form_items, :dependent => :destroy
  has_many :publications, :dependent => :destroy
  has_many :form_item_groups, :dependent => :destroy
  
  validates_presence_of :name, :contact_name, :phone, :email, :address_1, :city, :state, :postal_code, :country
  
  mount_uploader :logo, LogoUploader
  
  def to_s
    self.name
  end
  
  def all_staff
    User.find(:all, :conditions => {:staff => true, :publisher_id => self.id})
  end
  
  def all_admin
    User.find(:all, :conditions => {:admin => true, :publisher_id => self.id})
  end  
  
  def can_delete?
    a = true
    self.publications.each do |pub|
      if !pub.lib_exported_flag || !pub.pub_exported_flag
        a = false
        break
      end    
    end
    return a
  end
end
