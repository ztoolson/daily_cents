class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :ensure_atrium_user_created

  private

  def ensure_atrium_user_created
    return if current_user&.user_guid

    puts "*" * 90
    begin
      atrium_user = ::Atrium::User.create(identifier: current_user.id, metadata: nil, is_disabled: false)
      current_user.update_attributes(user_guid: atrium_user.guid)
    rescue
    end
  end
end
