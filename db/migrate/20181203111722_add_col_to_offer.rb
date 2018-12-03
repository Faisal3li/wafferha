class AddColToOffer < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :place_id, :integer
  end
end
