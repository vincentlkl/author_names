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

class Email < ActiveRecord::Base
  attr_accessible :to, :bcc, :from, :reply_to, :subject, :body, :date_sent, :message_sent
  
  validates_presence_of :to, :from, :reply_to, :subject, :body
  
  def self.to_send
    self.find(:all, :conditions => {:message_sent => false}, :limit => EMAIL_BATCH_LIMIT)
  end
  
end
