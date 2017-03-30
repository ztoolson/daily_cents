class Account < ApplicationRecord

  belongs_to :user, primary_key: 'guid', foreign_key: 'user_guid'
  has_many :transactions, primary_key: 'guid', foreign_key: 'account_guid'

  def self.initialize_from_atrium_record(atrium_record)
    self.new(
      :apr => atrium_record.apr,
      :apy => atrium_record.apy,
      :available_balance => atrium_record.available_balance,
      :available_credit => atrium_record.available_credit,
      :balance => atrium_record.balance,
      :credit_limit => atrium_record.credit_limit,
      :day_payment_is_due => atrium_record.day_payment_is_due,
      :guid => atrium_record.guid,
      :institution_code => atrium_record.institution_code,
      :interest_rate => atrium_record.interest_rate,
      :is_closed => atrium_record.is_closed,
      :last_payment => atrium_record.last_payment,
      :last_payment_at => atrium_record.last_payment_at,
      :matures_on => atrium_record.matures_on,
      :member_guid => atrium_record.member_guid,
      :minimum_balance => atrium_record.minimum_balance,
      :minimum_payment => atrium_record.minimum_payment,
      :name => atrium_record.name,
      :original_balance => atrium_record.original_balance,
      :payment_due_at => atrium_record.payment_due_at,
      :payoff_balance => atrium_record.payoff_balance,
      :started_on => atrium_record.started_on,
      :subtype => atrium_record.subtype,
      :total_account_value => atrium_record.total_account_value,
      :user_guid => atrium_record.user_guid,
      :atrium_created_at => atrium_record.created_at,
      :atrium_updated_at => atrium_record.updated_at
    )
  end
end
