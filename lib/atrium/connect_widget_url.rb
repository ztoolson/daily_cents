# TODO: move into atrium-ruby gem
module Atrium
  class ConnectWidgetUrl
    def self.create_url(user_guid)
      endpoint = "users/#{user_guid}/connect_widget_url"
      connect_widget_url_response = ::Atrium.client.make_request(:post, endpoint)

      account_params = account_response["account"]
      ::Atrium::Account.new(account_params)
    end
  end
end
