class CreateSpreeCarouselsTable < ActiveRecord::Migration
  def change
    create_table :spree_carousels do |t|
      t.string     :title,                                    null: false, unique: true
      t.boolean    :show_title,          default: false
      t.string     :location,                                 null: false
      t.boolean    :randomize,           default: true
      t.boolean    :accessibility,       default: true
      t.boolean    :autoplay,            default: true
      t.integer    :autoplay_speed,      default: 5000
      t.boolean    :arrows,              default: true
      t.boolean    :center_mode,         default: false
      t.string     :center_padding,      default: '50px',     null: true
      t.boolean    :dots,                default: true
      t.boolean    :draggable,           default: true
      t.boolean    :fade,                default: false
      t.boolean    :focus_on_select,     default: false
      t.string     :easing,              default: 'linear',   null: false
      t.boolean    :infinite,            default: true
      t.string     :lazy_load,           default: 'ondemand', null: false
      t.boolean    :pause_on_hover,      default: true
      t.boolean    :pause_on_dots_hover, default: false
      t.integer    :slides_to_show,      default: 1
      t.integer    :slides_to_scroll,    default: 1
      t.integer    :speed,               default: 300
      t.boolean    :swipe,               default: true
      t.boolean    :touch_move,          default: true
      t.integer    :touch_threshold,     default: 5
      t.boolean    :use_css,             default: true
      t.timestamps
    end
  end
end
