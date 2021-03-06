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
