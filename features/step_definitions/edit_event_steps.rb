Given /^a saved event starts on "(.*?)"$/ do |time|
  @event = Event.make!(event_start: Time.parse(time))
end

When /^I edit that event$/ do
  visit(edit_event_path(@event))
end

Then /^the "(.*?)" should be "(.*?)"$/ do |field,value|
  find_field("event_#{field}").value.should == value
end
