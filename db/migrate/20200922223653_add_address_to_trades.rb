class AddAddressToTrades < ActiveRecord::Migration[6.0]
  def change
    add_column :trades, :address, :string, default:false
  end
end
