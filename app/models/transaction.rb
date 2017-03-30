class Transaction < ApplicationRecord
  belongs_to :account, primary_key: 'guid', foreign_key: 'account_guid'

  def self.initialize_from_atrium_record(atrium_record)
    self.new.tap do |initial_transaction|
      initial_transaction.account_guid = atrium_record.account_guid
      initial_transaction.amount = atrium_record.amount
      initial_transaction.category = atrium_record.category
#       initial_transaction.check_number_string = atrium_record.check_number_string
      initial_transaction.description = atrium_record.description
      initial_transaction.guid = atrium_record.guid
      initial_transaction.is_bill_pay = atrium_record.is_bill_pay
      initial_transaction.is_expense = atrium_record.is_expense
      initial_transaction.is_fee = atrium_record.is_fee
      initial_transaction.is_income = atrium_record.is_income
      initial_transaction.is_overdraft_fee = atrium_record.is_overdraft_fee
      initial_transaction.is_payroll_advance = atrium_record.is_payroll_advance
      initial_transaction.latitude = atrium_record.latitude
      initial_transaction.longitude = atrium_record.longitude
      initial_transaction.member_guid = atrium_record.member_guid
      initial_transaction.memo = atrium_record.memo
      initial_transaction.merchant_category_code = atrium_record.merchant_category_code
      initial_transaction.original_description = atrium_record.original_description
      initial_transaction.posted_at = atrium_record.posted_at
      initial_transaction.status = atrium_record.status
      initial_transaction.top_level_category = atrium_record.top_level_category
      initial_transaction.transacted_at = atrium_record.transacted_at
      initial_transaction.type = atrium_record.type
      initial_transaction.user_guid = atrium_record.user_guid
      initial_transaction.atrium_created_at = atrium_record.created_at
      initial_transaction.atrium_updated_at = atrium_record.updated_at
    end
  end
end
