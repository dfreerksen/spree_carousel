module Spree
  class CarouselItem < ActiveRecord::Base
    belongs_to :carousel,
               class_name: 'Spree::Carousel'
    belongs_to :product,
               class_name: 'Spree::Product'

    #default_scope { order('position ASC') }
    default_scope { order(:position => :asc) }

    validates :carousel_id, presence: true
    validates :product_id,  presence: true
    validates :position,    presence: true
  end
end
