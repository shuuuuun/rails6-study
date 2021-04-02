Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :line, ENV["LINE_CHANNEL_ID"], ENV["LINE_CHANNEL_SECRET"]
end
