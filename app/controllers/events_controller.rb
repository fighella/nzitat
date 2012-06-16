class EventsController < InheritedResources::Base

  def show
    @subscription = Subscription.new
    show!
  end
end
