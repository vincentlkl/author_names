# == Schema Information
#
# Table name: emails
#
#  id           :integer          not null, primary key
#  to           :string(255)
#  bcc          :text
#  from         :string(255)
#  reply_to     :string(255)
#  subject      :string(255)
#  body         :text
#  date_sent    :date
#  message_sent :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class EmailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
