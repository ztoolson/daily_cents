class DailyCentsController < ApplicationController
  def index
    # TODO: this is super nasty. maybe make this not so nasty to calculate the average per day spending
    @categories = Transaction.where(user_guid: current_user.user_guid).select(:category).group(:category).sum(:amount)

    first_transaction = Transaction.where(user_guid: current_user.user_guid).select(:transacted_at, :id).order(transacted_at: :desc).limit(1).first
    last_transaction = Transaction.where(user_guid: current_user.user_guid).select(:transacted_at, :id).order(transacted_at: :asc).limit(1).first

    number_of_days = (first_transaction.transacted_at.to_date - last_transaction.transacted_at.to_date).round
    number_of_days = 1 if number_of_days <= 0

    @categories.keys.each do |category|
      @categories[category] = @categories[category] / number_of_days
    end
  end
end
