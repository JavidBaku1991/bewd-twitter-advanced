# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Note: ActionMailer settings should go in an environment-specific file,
# like config/environments/development.rb or config/environments/production.rb.

# Move the following configuration to the appropriate environment file:
# config/environments/development.rb (for development environment)
# config/environments/production.rb (for production environment)

# Example for config/environments/development.rb:
Rails.application.configure do
  # ActionMailer settings
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: ENV['SMTP_ADDRESS'], # e.g., 'smtp.gmail.com'
    port: 587,
    domain: ENV['SMTP_DOMAIN'], # e.g., 'example.com'
    user_name: ENV['SMTP_USERNAME'], # Your SMTP username
    password: ENV['SMTP_PASSWORD'], # Your SMTP password
    authentication: 'plain',
    enable_starttls_auto: true
  }

  # Default URL options
  config.action_mailer.default_url_options = { host: ENV['URL'] }
end
