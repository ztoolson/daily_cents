class AddReferencesToTransactions < ActiveRecord::Migration[5.1]
  def change
    add_reference :transactions, :account, foreign_key: true, index: true
  end
end
