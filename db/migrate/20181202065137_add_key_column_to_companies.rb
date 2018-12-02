class AddKeyColumnToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :category_id, :integer
  end
end
