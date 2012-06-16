class SubscriptionsController < InheritedResources::Base

  def create
    @event = Event.find(params[:event_id])
    @subscription = @event.subscriptions.new(params[:subscription])
    @user = User.find_or_create_by_email(@subscription.email)
    @subscription.user = @user
    if @subscription.save
      create! { event_path(@event) }
    else
      
      redirect_to @event
    end

  end

end
