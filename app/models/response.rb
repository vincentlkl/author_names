# == Schema Information
#
# Table name: responses
#
#  id                :integer          not null, primary key
#  questionnaire_id  :integer          not null
#  user_id           :integer          not null
#  form_item_id      :integer          not null
#  response_text     :text
#  lib_exported_flag :boolean          default(FALSE)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  pub_exported_flag :boolean          default(FALSE)
#  publication_id    :integer
#  author_upload     :string(255)
#

class Response < ActiveRecord::Base
  attr_accessible :user_id, :questionnaire_id, :form_item_id, :response_text, :author_upload, :publication_id, :pub_exported_flag, :lib_exported_flag
  
  belongs_to :user
  belongs_to :questionnaire
  belongs_to :form_item
  belongs_to :publication
  
  mount_uploader :author_upload, AuthorUploader
   
end
