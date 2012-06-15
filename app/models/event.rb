class Event < ActiveRecord::Base
  attr_accessible :description, :event_end, :event_start, :status, :title
end
