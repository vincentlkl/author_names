# == Schema Information
#
# Table name: form_item_groups
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  publisher_id     :integer
#  questionnaire_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class FormItemGroup < ActiveRecord::Base
  attr_accessible :name, :publisher
  
  has_many :form_items#, :order => "form_items_questionnaires.position"
  belongs_to :publisher
  has_and_belongs_to_many :questionnaires
  
end
