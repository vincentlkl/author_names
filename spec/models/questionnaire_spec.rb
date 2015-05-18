# == Schema Information
#
# Table name: questionnaires
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe Questionnaire, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
