class Transaction < ApplicationRecord
  DAILY_CENTS_FIELD_NAMES_TO_ATRIUM_FIELD_NAMES = {
    account_guid: :account_guid,
    amount: :amount,
    category: :category,
    check_number_string: :check_number,
    description: :description,
    guid: :guid,
    is_bill_pay: :is_bill_pay,
    is_expense: :is_expense,
    is_fee: :is_fee,
    is_income: :is_income,
    is_overdraft_fee: :is_overdraft_fee,
    is_payroll_advance: :is_payroll_advance,
    latitude: :latitude,
    longitude: :longitude,
    member_guid: :member_guid,
    memo: :memo,
    merchant_category_code: :merchant_category_code,
    original_description: :original_description,
    posted_at: :posted_at,
    status: :status,
    top_level_category: :top_level_category,
    transacted_at: :transacted_at,
    transaction_type: :type,
    user_guid: :user_guid,
    atrium_created_at: :created_at,
    atrium_updated_at: :updated_at,
  }.freeze

  belongs_to :account, primary_key: 'guid', foreign_key: 'account_guid'

  def self.initialize_from_atrium_record(atrium_record)
    new_transaction = self.new

    DAILY_CENTS_FIELD_NAMES_TO_ATRIUM_FIELD_NAMES.each do |daily_cents_field_name, atrium_field_name|
      new_transaction.send("#{daily_cents_field_name}=", atrium_record.send(atrium_field_name))
    end

    new_transaction
  end
end
