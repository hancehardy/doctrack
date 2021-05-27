class AddColumnToContracts < ActiveRecord::Migration[6.1]
  def change
    add_column :contracts, :job_status, :boolean
  end
end
