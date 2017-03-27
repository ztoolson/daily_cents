class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.decimal :apr, precision: 10, scale: 6
      t.decimal :apy, precision: 10, scale: 6
      t.text :account_number
      t.decimal :available_balance, precision: 14, scale: 2
      t.decimal :available_credit
      t.decimal :balance, precision: 14, scale: 2
      t.decimal :credit_limit, precision: 10, scale: 2
      t.integer :day_payment_is_due
      t.text :guid
      t.text :institution_code
      t.decimal :interest_rate, precision: 10, scale: 6
      t.boolean :is_closed
      t.decimal :last_payment, precision: 10, scale: 6
      t.datetime :last_payment_at
      t.datetime :matures_on
      t.text :member_guid
      t.decimal :minimum_balance, precision: 14, scale: 2
      t.decimal :minimum_payment, precision: 10, scale: 2
      t.text :name
      t.decimal :original_balance, precision: 10, scale: 2
      t.datetime :payment_due_at
      t.decimal :payoff_balance, precision: 10, scale: 2
      t.text :routing_number
      t.datetime :started_on
      t.text :subtype
      t.decimal :total_account_value, precision: 14, scale: 2
      t.text :type
      t.text :user_guid

      t.datetime :atrium_created_at
      t.datetime :atrium_updated_at

      t.timestamps
    end
  end
end
