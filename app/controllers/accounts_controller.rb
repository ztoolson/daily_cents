class AccountsController < ApplicationController
  def index
    @accounts = ::Account.where(user_guid: current_user.user_guid)
  end

  def show
    @account = ::Account.find(params[:id])
  end
end
