class EventReminder < ActiveRecord::Base
  attr_accessible :notify_at
  belongs_to :event
  validates :notify_at, presence: true
  scope :pending, where(delivered_at: nil).where("notify_at <= ?", Time.now.utc)

  def self.deliver
    Mailer.event_reminders(pending)
  end
end
