module Spree
  class Carousel < ActiveRecord::Base
    validates :title, presence: true

    default_scope { order(title: :asc) }

    scope :home_location,     -> { where(location: 'home') }
    scope :top_location,      -> { where(location: 'wrapper_top') }
    scope :bottom_location,   -> { where(location: 'wrapper_bottom') }
    scope :sidebar_location,  -> { where(location: 'sidebar') }
    scope :products_location, -> { where(location: 'products') }
  end
end
