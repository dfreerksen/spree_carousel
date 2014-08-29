Spree::Product.class_eval do
  def self.featured
    where(featured: true).latest
  end

  def self.latest
    order(created_at: :desc)
  end
end
