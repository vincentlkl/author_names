# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  name       :string
#  type       :string
#  created_at :datetime
#  updated_at :datetime
#

class Question < ActiveRecord::Base
  has_many :questionnaire_links
  has_many :questionnaires, :through => :questionnaire_link
end
