require 'spec_helper'

describe Event do

  describe "#populate_time" do
    
    context "has events start time set" do
      before { subject.event_start = Time.parse("2012-06-16 22:30") }
      it "sets the date" do
        expect { subject.populate_time }.to change(subject, :date).to("2012-06-16")
      end
      it "sets the time" do 
        expect { subject.populate_time }.to change(subject, :time).to("10:30PM")
      end

    end

  end


  describe "#valid?" do
    
    it { should validate_presence_of(:event_start) }
    it { should validate_presence_of(:title) }
    it { Event.make!; should validate_uniqueness_of(:title) }

    context "when date is present" do

      before { subject.date = "2012-06-16"  }
      it "does not set event_start" do
        expect { subject.valid? }.not_to change(subject,:event_start)
      end
    end

    context "when time is present" do
      before { subject.time = "10:30" }
      it "does not set event_start" do
        expect { subject.valid? }.not_to change(subject,:event_start)
      end
    end


    context "when date and time are blank" do
      it "does not set event_start" do
        expect { subject.valid? }.not_to change(subject,:event_start) 
      end
    end
    
    context "when date and time are present" do
      before { subject.time = "10:30" }
      before { subject.date = "2012-06-16" }
      it "does not set event_start" do
        expect { subject.valid? }.to change(subject,:event_start).to(Time.parse("2012-06-16 10:30")) 
      end
    end



  end



end
