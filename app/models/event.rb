class Event < ActiveRecord::Base

  attr_accessible :description, :event_end, :event_start, :status, :title

  belongs_to :user

  has_many :subscriptions

  validates :event_start,  :presence => true
  validates :title,  :presence => true

end
