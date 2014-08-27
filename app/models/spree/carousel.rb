module Spree
  class Carousel < ActiveRecord::Base
    has_many :carousel_items,
             class_name: 'Spree::CarouselItem'

    validates :title,    presence: true
    validates :location, presence: true

    def self.alltop_location
      where(location: 'alltop').first
    end
  end
end
