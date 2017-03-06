class RegistrationsController < Devise::RegistrationsController
  def create
    super do |user|
      begin
        atrium_user = ::Atrium::User.create(identifier: user.id, metadata: nil, is_disabled: false)
        user.update_attributes(user_guid: atrium_user.guid)
      rescue
      end
    end
  end
end
