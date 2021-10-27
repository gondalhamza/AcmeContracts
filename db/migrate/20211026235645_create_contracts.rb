class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.string :company
      t.string :contractId
      t.timestamp :periodEnd
      t.timestamp :periodStart
      t.boolean :scheduledForRenewal
      t.timestamp :negotiationRenewalDate

      t.timestamps
    end
  end
end
