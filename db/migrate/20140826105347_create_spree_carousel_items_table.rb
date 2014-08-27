class CreateSpreeCarouselItemsTable < ActiveRecord::Migration
  def change
    create_table :spree_carousel_items do |t|
      t.references :carousel, null: false
      t.references :product,  null: false
      t.integer    :position,              default: 0
      t.timestamps
    end

    add_index :spree_carousel_items, :carousel_id
    add_index :spree_carousel_items, :product_id
  end
end
