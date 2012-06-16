class Mailer < ActionMailer::Base
  default from: "from@example.com"

  def self.event_reminders(reminders)
    reminders.each { |r| event_reminder(r).deliver }
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer.event_reminder.subject
  #
  def event_reminder(reminder)
    @event_start = reminder.event.event_start.to_s(:long)
    mail subject: reminder.event.title,
         bcc: reminder.event.subscribers.collect(&:email)
  end
end
