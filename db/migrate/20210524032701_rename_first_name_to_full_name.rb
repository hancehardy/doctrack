class RenameFirstNameToFullName < ActiveRecord::Migration[6.1]
  def change
    rename_column :salesmen, :first_name, :full_name
    remove_column :salesmen, :last_name
  end
end
