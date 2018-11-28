class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.text :offer_Description
      t.datetime :expired_Date
      t.datetime :start_Date
      t.string :image
      t.string :coLocation
      t.integer :view_Count
      t.string :coupon
      t.boolean :premium
      t.boolean :used
      t.timestamps
    end
  end
end
