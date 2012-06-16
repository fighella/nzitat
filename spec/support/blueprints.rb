require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end
#

Event.blueprint do
  title { "Event #{sn}" }
  event_start { Time.now }
end
