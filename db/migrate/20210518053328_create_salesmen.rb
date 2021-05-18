class CreateSalesmen < ActiveRecord::Migration[6.1]
  def change
    create_table :salesmen do |t|
      t.string :first_name
      t.string :last_name
      t.float :sales_commission

      t.timestamps
    end
  end
end
