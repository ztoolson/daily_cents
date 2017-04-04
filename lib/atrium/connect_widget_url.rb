# TODO: move into atrium-ruby gem

module Atrium
  class ConnectWidgetUrl
    def self.create_url(user_guid)
      endpoint = "/users/#{user_guid}/connect_widget_url"
      connect_widget_url_response = ::Atrium.client.make_request(:post, endpoint)

      connect_widget_url_keys = connect_widget_url_response['user']
      connect_widget_url_keys['connect_widget_url']
    end
  end
end
