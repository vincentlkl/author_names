# == Schema Information
#
# Table name: publications
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  author_id         :integer
#  publisher_id      :integer
#  questionnaire_id  :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  lib_exported_flag :boolean          default(FALSE)
#  pub_exported_flag :boolean          default(FALSE)
#

class Publication < ActiveRecord::Base
  attr_accessible :publisher_id, :questionnaire_id, :user_id, :author_id
  
  belongs_to :user
  belongs_to :author
  belongs_to :publisher
  belongs_to :questionnaire
  has_many :responses, :dependent => :destroy
end
