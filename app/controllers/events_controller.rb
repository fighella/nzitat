class EventsController < InheritedResources::Base
  
  before_filter :populate_time, only: :edit

  def index 
    @events = Event.order('event_start ASC')
    @past_events = Event.past_events
    @coming_events = Event.coming_events
  end

  def show
    @subscription = Subscription.new
    show!
  end

  private
  def populate_time
    resource.populate_time
  end
end
