class Account < ApplicationRecord
  DAILY_CENTS_FIELD_NAMES_TO_ATRIUM_FIELD_NAMES = {
    apr: :apr,
    apy: :apy,
    available_balance: :available_balance,
    available_credit: :available_credit,
    balance: :balance,
    credit_limit: :credit_limit,
    day_payment_is_due: :day_payment_is_due,
    guid: :guid,
    institution_code: :institution_code,
    interest_rate: :interest_rate,
    is_closed: :is_closed,
    last_payment: :last_payment,
    last_payment_at: :last_payment_at,
    matures_on: :matures_on,
    member_guid: :member_guid,
    minimum_balance: :minimum_balance,
    minimum_payment: :minimum_payment,
    name: :name,
    original_balance: :original_balance,
    payment_due_at: :payment_due_at,
    payoff_balance: :payoff_balance,
    started_on: :started_on,
    subtype: :subtype,
    total_account_value: :total_account_value,
    user_guid: :user_guid,
    atrium_created_at: :created_at,
    atrium_updated_at: :updated_at,
  }.freeze

  belongs_to :user, primary_key: 'user_guid', foreign_key: 'user_guid'
  has_many :transactions, primary_key: 'guid', foreign_key: 'account_guid'

  def self.initialize_from_atrium_record(atrium_record)
    new_account = self.new

    DAILY_CENTS_FIELD_NAMES_TO_ATRIUM_FIELD_NAMES.each do |daily_cents_field_name, atrium_field_name|
      new_account.send("#{daily_cents_field_name}=", atrium_record.send(atrium_field_name))
    end

    new_account
  end
end
