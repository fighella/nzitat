class Event < ActiveRecord::Base

  attr_accessible :description, :event_end, :event_start, :status, :title, :date, :time

  attr_accessor :date, :time

  before_validation :set_datetime

 #belongs_to :user

  has_many :subscriptions

  validates :event_start, :presence => true
  validates :title, :presence => true, :uniqueness => true
  
  def populate_time
    self.date = event_start.strftime('%Y-%m-%d')
    self.time = event_start.strftime('%I:%M%p')
  end

  scope :coming_events, where('event_start > ?', Time.now)
  scope :past_events, where('event_start < ?', Time.now)

  def has_happened?
    event_start < Time.now
  end

  private
  def set_datetime
    if date.present? && time.present?

      self.event_start = Time.parse([date,time]*' ').utc

    end

  end

end
