class ChangeDateFromstringToDatetime < ActiveRecord::Migration[6.1]
  def change
    change_column :contracts, :milestone_1_date, :datetime
    change_column :contracts, :milestone_2_date, :datetime
    change_column :contracts, :milestone_3_date, :datetime
    change_column :contracts, :milestone_4_date, :datetime
  end
end
