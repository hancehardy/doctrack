class AddReferralNameToContracts < ActiveRecord::Migration[6.1]
  def change
    add_column :contracts, :referral_name, :string
  end
end
