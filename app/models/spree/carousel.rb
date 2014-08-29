module Spree
  class Carousel < ActiveRecord::Base
    validates :title, presence: true

    def self.home_location
      where(location: 'home').first
    end

    def self.top_location
      where(location: 'wrapper_top').first
    end

    def self.bottom_location
      where(location: 'wrapper_bottom').first
    end

    def self.sidebar_home_location
      where(location: 'sidebar_home').first
    end

    def self.sidebar_products_location
      where(location: 'sidebar_products').first
    end

    def self.products_location
      where(location: 'products').first
    end
  end
end
