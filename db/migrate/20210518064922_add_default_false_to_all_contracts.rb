class AddDefaultFalseToAllContracts < ActiveRecord::Migration[6.1]
  def change
    change_column_default :contracts, :milestone_2_complete, from: nil, to: false
    change_column_default :contracts, :milestone_3_complete, from: nil, to: false
    change_column_default :contracts, :milestone_4_complete, from: nil, to: false
    change_column_default :contracts, :contract_status, from: nil, to: false
  end
end
