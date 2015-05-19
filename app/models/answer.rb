# == Schema Information
#
# Table name: answers
#
#  id               :integer          not null, primary key
#  questionnaire_id :integer
#  questions        :hstore
#  created_at       :datetime
#  updated_at       :datetime
#

class Answer < ActiveRecord::Base
  belongs_to :questionnaire
  store_accessor :questions

  def self.strong_parameters
    columns =[:id, :questionnaire_id]
    columns
  end

end
