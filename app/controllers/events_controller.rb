class EventsController < InheritedResources::Base
  
  before_filter :populate_time, only: :edit

  def show
    @subscription = Subscription.new
    show!
  end

  private
  def populate_time
    resource.populate_time
  end
end
