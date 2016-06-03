class Message < ActiveRecord::Base
  belongs_to :reciever
  belongs_to :sender
  validates :message_text, presence:true
  validates :sender_id, presence:true
  validates :reciever_id, presence:true  
  validates :time, presence: true
end
