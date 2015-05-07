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

class Author < ActiveRecord::Base
  attr_accessible :publisher_id, :user_id, :phone, :address_1, :address_2, :city, :state, :postal_code, :country, :email, :first_name, :last_name
  
  belongs_to :publisher
  belongs_to :user
  has_many :publications, :dependent => :destroy
  
  validates_presence_of :publisher_id, :user_id
  
  def to_s
    self.full_name
  end
  
  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
  
  def full_name_email
    return "#{self.last_name}, #{self.first_name} (#{self.email})"
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
