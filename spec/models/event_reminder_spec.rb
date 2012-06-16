require 'spec_helper'

describe EventReminder do
  it { should belong_to(:event) }

  describe '.deliver' do
    let(:pending) { mock("pending") }
    before do
      EventReminder.stub(:pending).and_return(pending)
      Mailer = mock("mailer").as_null_object
    end

    it "delivers pending to mailer" do
      Mailer.should_receive(:event_reminders).with(pending)
      EventReminder.deliver
    end
  end

  describe '.pending' do
    let!(:future) { EventReminder.make!(notify_at: 1.minute.from_now.utc) }
    let!(:past) { EventReminder.make!(notify_at: 1.minute.ago.utc) }
    subject { EventReminder.pending }

    it "excludes future notification" do
      subject.should_not include(future)
    end

    it "includes pending" do
      subject.should include(past)
    end
  end

  describe '#valid?' do
    it { should validate_presence_of(:notify_at) }
  end
end
