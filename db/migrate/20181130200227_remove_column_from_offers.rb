class RemoveColumnFromOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :premium, :boolean
  end
end
