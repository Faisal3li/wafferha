class AddColumnToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :category_id, :integer
    # add_column :offers, :company_id, :integer
  end
end
