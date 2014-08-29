module Spree
  class Carousel < ActiveRecord::Base
    validates :title, presence: true

    scope :home_location,             -> { where(location: 'home') }
    scope :top_location,              -> { where(location: 'wrapper_top') }
    scope :bottom_location,           -> { where(location: 'wrapper_bottom') }
    scope :sidebar_home_location,     -> { where(location: 'sidebar_home') }
    scope :sidebar_products_location, -> { where(location: 'sidebar_products') }
    scope :products_location,         -> { where(location: 'products') }
  end
end
