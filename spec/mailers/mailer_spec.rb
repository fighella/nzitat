require "spec_helper"

describe Mailer do
  describe '.event_reminders' do
    it "delivers each reminder" do
      reminder = mock("reminder")
      mail = mock("mail")
      Mailer.should_receive(:event_reminder).with(reminder).and_return(mail)
      mail.should_receive(:deliver)
      Mailer.event_reminders([reminder])
    end
  end

  describe '#event_reminder' do
    let(:mail) { Mailer.event_reminder(reminder) }
    let(:reminder) do
      mock("reminder",
           event: mock("event",
                       title: "event title",
                       event_start: mock("event_start", to_s: "starting soon"),
                       subscribers: [mock("subscriber", email: "foo@bar.com")]))
    end

    it "includes event title in subject" do
      mail.subject.should include("event title")
    end

    it "sends to event subscriber" do
      mail.bcc.should == ["foo@bar.com"]
    end

    it "renders the body" do
      mail.body.encoded.should include("starting soon")
    end
  end
end
