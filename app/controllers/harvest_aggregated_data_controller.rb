class HarvestAggregatedDataController < ApplicationController
  def perform
    ::HarvestAggregatedDataWorker.perform_async(current_user.user_guid, member_guid)
    head :accepted
  end

  private

  def member_guid
    params[:member_guid]
  end
end
