OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth:: Builder do
  # provider :developer unless Rails.evn.production?
  provider :twitter, '', ''
  provider :facebook, '', ''
end