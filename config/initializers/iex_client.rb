def initialize_new_client
  @client = IEX::Api::Client.new(
  publishable_token: Rails.application.credentials.dig(:publishable_token),
  secret_token: Rails.application.credentials.dig(:secret_token),
  endpoint: Rails.application.credentials.dig(:endpoint)
  )
end
