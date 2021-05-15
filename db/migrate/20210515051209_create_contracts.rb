class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.integer :job_number
      t.string :job_name
      t.decimal :job_amount

      t.timestamps
    end
  end
end
