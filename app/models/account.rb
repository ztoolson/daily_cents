class Account < ApplicationRecord

  belongs_to :user, primary_key: 'user_guid', foreign_key: 'user_guid'
  has_many :transactions, primary_key: 'guid', foreign_key: 'account_guid'

  def self.initialize_from_atrium_record(atrium_record)
    self.new.tap do |initial_account|
      initial_account.apr = atrium_record.apr
      initial_account.apy = atrium_record.apy
      initial_account.available_balance = atrium_record.available_balance
      initial_account.available_credit = atrium_record.available_credit
      initial_account.balance = atrium_record.balance
      initial_account.credit_limit = atrium_record.credit_limit
      initial_account.day_payment_is_due = atrium_record.day_payment_is_due
      initial_account.guid = atrium_record.guid
      initial_account.institution_code = atrium_record.institution_code
      initial_account.interest_rate = atrium_record.interest_rate
      initial_account.is_closed = atrium_record.is_closed
      initial_account.last_payment = atrium_record.last_payment
      initial_account.last_payment_at = atrium_record.last_payment_at
      initial_account.matures_on = atrium_record.matures_on
      initial_account.member_guid = atrium_record.member_guid
      initial_account.minimum_balance = atrium_record.minimum_balance
      initial_account.minimum_payment = atrium_record.minimum_payment
      initial_account.name = atrium_record.name
      initial_account.original_balance = atrium_record.original_balance
      initial_account.payment_due_at = atrium_record.payment_due_at
      initial_account.payoff_balance = atrium_record.payoff_balance
      initial_account.started_on = atrium_record.started_on
      initial_account.subtype = atrium_record.subtype
      initial_account.total_account_value = atrium_record.total_account_value
      initial_account.user_guid = atrium_record.user_guid
      initial_account.atrium_created_at = atrium_record.created_at
      initial_account.atrium_updated_at = atrium_record.updated_at
    end
  end
end
