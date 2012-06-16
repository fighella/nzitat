class User < ActiveRecord::Base
  validates :email, :format => { :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ }

  has_many :subscriptions

end
