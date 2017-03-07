class ConnectWidgetUrlsController < ApplicationController
  def show
    @connect_widget_url = Atrium::ConnectWidgetUrl.create_url(current_user.user_guid)
    render plain: @connect_widget_url
  end
end
