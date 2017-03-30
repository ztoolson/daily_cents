class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.text :account_guid
      t.decimal :amount, precision: 10, scale: 2
      t.text :category
      t.text :check_number_string
      t.text :description
      t.text :guid
      t.boolean :is_bill_pay
      t.boolean :is_expense
      t.boolean :is_fee
      t.boolean :is_income
      t.boolean :is_overdraft_fee
      t.boolean :is_payroll_advance
      t.decimal :latitude
      t.decimal :longitude
      t.text :member_guid
      t.text :memo
      t.integer :merchant_category_code
      t.text :original_description
      t.datetime :posted_at
      t.text :status
      t.text :top_level_category
      t.datetime :transacted_at
      t.text :type
      t.text :user_guid

      t.datetime :atrium_created_at
      t.datetime :atrium_updated_at

      t.timestamps
    end
  end
end
