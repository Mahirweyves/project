class AddListingToTrades < ActiveRecord::Migration[6.0]
  def change
    add_column :trades, :listing, :text
  end
end
