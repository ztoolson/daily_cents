class Transaction < ApplicationRecord
  belongs_to :account

  def self.initialize_from_atrium_record(atrium_record)
    self.new(
      :account_guid => atrium_record.account_guid,
      :amount => atrium_record.amount,
      :category => atrium_record.category,
      :check_number_string => atrium_record.check_number_string,
      :description => atrium_record.description,
      :guid => atrium_record.guid,
      :is_bill_pay => atrium_record.is_bill_pay,
      :is_expense => atrium_record.is_expense,
      :is_fee => atrium_record.is_fee,
      :is_income = atrium_record.is_income,
      :is_overdraft_fee => atrium_record.is_overdraft_fee,
      :is_payroll_advance => atrium_record.is_payroll_advance,
      :latitude => atrium_record.latitude,
      :longitude => atrium_record.longitude,
      :member_guid => atrium_record.member_guid,
      :memo => atrium_record.memo,
      :merchant_category_code => atrium_record.merchange_category_code,
      :original_description => atrium_record.original_description,
      :posted_at => atrium_record.posted_at,
      :status => atrium_record.status,
      :top_level_category => atrium_record.top_level_category,
      :transacted_at => atrium_record.transacted_at,
      :type => atrium_record.type,
      :user_guid => atrium_record.user_guid,
      :atrium_created_at => atrium_record.created_at,
      :atrium_updated_at => atrium_record.updated_at
    )
  end
end
