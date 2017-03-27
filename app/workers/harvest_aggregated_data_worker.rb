class HarvestAggregatedDataWorker
  include Sidekiq::Worker

  def perform(user_guid, member_guid)
    atrium_member = ::Atrium::Member.read(:user_guid => user_guid, :member_guid => member_guid)

    # TODO: get accounts and transactions for the member_guid from Atrium API
  end
end
