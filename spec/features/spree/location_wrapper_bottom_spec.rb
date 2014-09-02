require 'spec_helper'

feature 'Bottom of all pages' do
  %w(featured latest).each do |type|
    let(:carousel) { create(:"carousel_#{type}") }
    let(:product)  { create(:product) }
    let(:path)     { spree.product_path(product) }
    let(:location) { 'wrapper_bottom' }
    let(:element)  { '#wrapper + .carousel' }

    before { product.update_attribute(:featured, true) }

    context "`#{type}` carousel" do
      it 'does not show when not enabled' do
        carousel.update_attribute(:location, nil)
        visit path
        expect(page).to_not have_css(element)
      end

      it 'shows when enabled' do
        carousel.update_attribute(:location, location)
        visit path
        expect(page).to have_css(element)
      end
    end
  end
end
