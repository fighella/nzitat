# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec' command
  # watch(/^.+\.gemspec/)
end

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)/assets/\w+/(.+\.(css|js|html)).*})  { |m| "/assets/#{m[2]}" }
end

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)/assets/\w+/(.+\.(css|js|html)).*})  { |m| "/assets/#{m[2]}" }
end

## Sample template for guard-unicorn
#
# Usage:
#     guard :unicorn, <options hash>
#
# Possible options:
# * :daemonize (default is true) - should the Unicorn server start daemonized?
# * :config_file (default is "config/unicorn.rb") - the path to the unicorn file
# * :pid_file (default is "tmp/pids/unicorn.pid") - the path to the unicorn pid file
guard :unicorn, :daemonize => true

## Sample template for guard-unicorn
#
# Usage:
#     guard :unicorn, <options hash>
#
# Possible options:
# * :daemonize (default is true) - should the Unicorn server start daemonized?
# * :config_file (default is "config/unicorn.rb") - the path to the unicorn file
# * :pid_file (default is "tmp/pids/unicorn.pid") - the path to the unicorn pid file
guard :unicorn, :daemonize => true

## Sample template for guard-unicorn
#
# Usage:
#     guard :unicorn, <options hash>
#
# Possible options:
# * :daemonize (default is true) - should the Unicorn server start daemonized?
# * :config_file (default is "config/unicorn.rb") - the path to the unicorn file
# * :pid_file (default is "tmp/pids/unicorn.pid") - the path to the unicorn pid file
guard :unicorn, :daemonize => true

## Sample template for guard-unicorn
#
# Usage:
#     guard :unicorn, <options hash>
#
# Possible options:
# * :daemonize (default is true) - should the Unicorn server start daemonized?
# * :config_file (default is "config/unicorn.rb") - the path to the unicorn file
# * :pid_file (default is "tmp/pids/unicorn.pid") - the path to the unicorn pid file
guard :unicorn, :daemonize => true
