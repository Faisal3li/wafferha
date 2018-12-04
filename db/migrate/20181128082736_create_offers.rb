class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.text :offer_Description
      t.date :expired_Date
      t.date :start_Date
      t.string :image
      t.string :coLocation
      t.integer :view_Count
      t.boolean :coupon, default: false
      t.boolean :premium
      t.boolean :used
      t.timestamps
    end
  end
end
