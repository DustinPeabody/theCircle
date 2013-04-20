OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
  provider :facebook, '365583646880693', '14827e4328d91e8a0e48e8c0926bd301'
end