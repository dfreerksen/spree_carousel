class CreateSpreeCarouselsTable < ActiveRecord::Migration
  def up
    add_column :spree_products, :featured, :boolean, default: false, null: false

    create_table :spree_carousels do |t|
      t.string :title, null: false, unique: true
      t.boolean :show_title, default: true
      t.string :group, default: 'latest', null: false
      t.string :location, default: nil, null: true
      t.boolean :randomize, default: true
      t.boolean :accessibility, default: true
      t.boolean :autoplay, default: true
      t.integer :autoplay_speed, default: 5000
      t.boolean :arrows, default: true
      t.boolean :center_mode, default: false
      t.string :center_padding, default: '50px', null: true
      t.boolean :dots, default: true
      t.boolean :draggable, default: true
      t.boolean :fade, default: false
      t.boolean :focus_on_select, default: false
      t.string :easing, default: 'linear'
      t.boolean :infinite, default: true
      t.string :lazy_load, default: 'ondemand'
      t.boolean :pause_on_hover, default: true
      t.boolean :pause_on_dots_hover, default: false
      t.integer :slides_to_show, default: 1
      t.integer :slides_to_scroll, default: 1
      t.integer :speed, default: 300
      t.boolean :swipe, default: true
      t.boolean :touch_move, default: true
      t.integer :touch_threshold, default: 5
      t.boolean :use_css, default: true
      t.integer :limit, default: 10, null: false
      t.timestamps
    end

    [
      ['Featured Products', 'featured'],
      ['Latest Products',   'latest']
    ].each do |title, group|
      Spree::Carousel.create!(title: title, group: group)
    end
  end

  def down
    remove_column :spree_products, :featured

    drop_table :spree_carousels
  end
end
