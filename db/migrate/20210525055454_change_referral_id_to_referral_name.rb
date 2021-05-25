class ChangeReferralIdToReferralName < ActiveRecord::Migration[6.1]
  def change
    remove_column :contracts, :referral_id
  end
end
