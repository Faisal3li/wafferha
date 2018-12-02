class RemoveIdColumnFromOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :category_id, :integer
  end
end
