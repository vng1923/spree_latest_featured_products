class CreateLatests < ActiveRecord::Migration
  def change
    create_table :spree_latest_products do |t|
      t.belongs_to :product, index: true
      t.integer :store_id
      t.integer :position

      t.timestamps
    end
  end
end
