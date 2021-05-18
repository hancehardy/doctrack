class CreateReferrals < ActiveRecord::Migration[6.1]
  def change
    create_table :referrals do |t|
      t.string :first_name
      t.string :last_name
      t.float :referral_commission

      t.timestamps
    end
  end
end
