# == Schema Information
#
# Table name: form_items_questionnaires
#
#  id               :integer          not null, primary key
#  form_item_id     :integer
#  questionnaire_id :integer
#  position         :integer          default(0), not null
#

class FormItemsQuestionnaires < ActiveRecord::Base
  attr_accessible :position
  
  belongs_to :form_item
  belongs_to :questionnaire
  belongs_to :form_item_group
  
  acts_as_list :scope => :questionnaire
end
