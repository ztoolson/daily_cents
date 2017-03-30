class HarvestAggregatedDataWorker
  include Sidekiq::Worker

  def perform(user_guid, member_guid)
    atrium_member = ::Atrium::Member.read(:user_guid => user_guid, :member_guid => member_guid)

    # TODO: get accounts and transactions for the member_guid from Atrium API
    accounts = []
    atrium_member.accounts.each do |account|
      accounts << Account.initialize_from_atrium_record(account)
    end
    Account.import accounts

    transactions = []
    atrium_member.transactions.each do |transaction|
      transactions << Transaction.initialize_from_atrium_record(transaction)
    end
    Transaction.import transactions
  end
end
