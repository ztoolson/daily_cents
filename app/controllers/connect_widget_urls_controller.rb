class ConnectWidgetUrlsController < ApplicationController
  def show
    @connect_widget_url = Atrium::ConnectWidgetUrl.create_url(current_user.user_guid)
  end
end
