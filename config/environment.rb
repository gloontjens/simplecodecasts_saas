# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => 'heroku.com',
  :enable_startstls_auto => true
}



# config.action_mailer.default_url_options = { :host => 'https://coder-manual-rails-gloontjens.c9users.io' }
# config.action_mailer.delivery_method = :smtp
# config.action_mailer.perform_deliveries = true
# config.action_mailer.smtp_settings = {
#     :address              => 'smtp.sendgrid.net',
#     :port                 => 2525,
#     :domain               => 'c9.io',
#     :user_name            => ENV['SENDGRID_USERNAME'],
#     :password             => ENV['SENDGRID_PASSWORD'],
#     :authentication => :plain,
#     :enable_starttls_auto => true,
#     :ssl =>false
# }
