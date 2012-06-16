module ApplicationHelper

  def timeago(time, options = {})
    content_tag(:time, time.to_s, options.merge(:datetime => time.getutc.iso8601)) if time
  end

  def event_time_select(field)
  times = %w(AM PM).collect do |ampm|
    (0..11).to_a.collect do |hour|
      (0..45).step(15).to_a.collect do |minutes|
        '%02d:%02d%s' % [hour == 0 ? 12 : hour, minutes, ampm]
      end
    end
  end.flatten
  collection_select(:event, :time, times, :to_s, :to_s, :prompt => true)
end

end
