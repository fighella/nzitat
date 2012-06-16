class Subscription < ActiveRecord::Base
  
  validates :email, :format => { :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ }
  
  attr_accessible :user, :event, :email

  belongs_to :user
  belongs_to :event

  attr_accessor :email

end
