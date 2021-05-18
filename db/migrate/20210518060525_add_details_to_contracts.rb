class AddDetailsToContracts < ActiveRecord::Migration[6.1]
  def change
    add_column :contracts, :contract_status, :boolean
    add_column :contracts, :milestone_1_id, :integer
    add_column :contracts, :milestone_1_date, :string
    add_column :contracts, :milestone_1_complete, :boolean
    add_column :contracts, :milestone_2_id, :integer
    add_column :contracts, :milestone_2_date, :string
    add_column :contracts, :milestone_2_complete, :boolean
    add_column :contracts, :milestone_3_id, :integer
    add_column :contracts, :milestone_3_date, :string
    add_column :contracts, :milestone_3_complete, :boolean
    add_column :contracts, :milestone_4_id, :integer
    add_column :contracts, :milestone_4_date, :string
    add_column :contracts, :milestone_4_complete, :boolean
    add_column :contracts, :salesman_id, :integer
    add_column :contracts, :referral_id, :integer
    add_column :contracts, :total_commission, :float
    add_column :contracts, :deposit_commission, :float
    add_column :contracts, :deposit_date, :datetime
    add_column :contracts, :final_commission, :float
    add_column :contracts, :final_commission_date, :datetime
    add_column :contracts, :commission_balance, :float
    add_column :contracts, :referral_commission_paid, :float
    add_column :contracts, :referral_commission_paid_date, :datetime
    add_column :contracts, :referral_amount, :float
    add_column :contracts, :referral_due, :float
  end
end
