class SubscriptionsController < InheritedResources::Base

  def create
    @event = Event.find(params[:event_id])
    @subscription = @event.subscriptions.new(params[:subscription])
    @user = User.find_or_create_by_email(@subscription.email)
    @subscription.user = @user
    create! { event_path(@event) }
  end

end
