class AddUserGuidToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_guid, :text
  end
end
