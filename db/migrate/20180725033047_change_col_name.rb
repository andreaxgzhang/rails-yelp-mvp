class ChangeColName < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :phoneNumber, :phone_number
  end
end
