Spree::Product.class_eval do
  has_many :carousel_items,
           through: :carousels,
           class_name: 'Spree::CarouselItems'
end
