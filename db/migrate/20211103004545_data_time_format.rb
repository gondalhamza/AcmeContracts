class DataTimeFormat < ActiveRecord::Migration[6.0]
  def change
    change_column :contracts, :periodEnd, :string
    change_column :contracts, :periodStart, :string
    change_column :contracts, :negotiationRenewalDate, :string
  end
end
