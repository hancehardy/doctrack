class AddDefaultFalseToContracts < ActiveRecord::Migration[6.1]
  def change
    change_column_default :contracts, :milestone_1_complete, from: nil, to: false
  end
end
