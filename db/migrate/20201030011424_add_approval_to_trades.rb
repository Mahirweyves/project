class AddApprovalToTrades < ActiveRecord::Migration[6.0]
  def change
    add_column :trades, :Approval, :boolean, :default => false
  end
end
