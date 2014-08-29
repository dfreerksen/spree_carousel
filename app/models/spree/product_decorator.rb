Spree::Product.class_eval do
  scope :latest, -> { order(created_at: :desc) }
  scope :featured, -> { where(featured: true).latest }
end
