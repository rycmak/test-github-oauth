Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :github,
    Rails.application.credentials.github_client_id,
    Rails.application.credentials.github_client_secret,
    scope: 'user:email'
  )
end

OmniAuth.config do |config|
  # Disable redirect to /auth/failure and always raise
  config.failure_raise_out_environments = ['test', 'development', 'staging', 'production']
end
