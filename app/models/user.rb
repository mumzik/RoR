class User < ActiveRecord::Base
	has_one:reciever, :dependent => :destroy
    has_one:sender, :dependent => :destroy
    has_many:form, :dependent => :destroy
    has_many:payments, :dependent => :destroy


	validates :login, presence: true, uniqueness: true
 	validates :name, presence: true
	validates :password, presence: true
	validates :country, presence: true
	validates :city, presence: true
	validates :email, presence: true
    validates :sex, presence: true, inclusion: { in: ["0","1"] }
    validates :rang, numericality: {only_integer: true, greater_than_or_equal_to: 0}, uniqueness: true
	

  def User.smessage_statistics()
	a=[]
    User.count.times{|i| a[i]=Message.where(sender_id: User.ids[i]).count}
	return a
  end

  def User.rmessage_statistics()
	a=[]
    User.count.times{|i| a[i]=Message.where(reciever_id: User.ids[i]).count}
	return a
  end


end
