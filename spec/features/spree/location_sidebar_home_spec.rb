require 'spec_helper'

feature 'Home listing sidebar' do
  %w(featured latest).each do |type|
    let(:carousel) { create(:"carousel_#{type}") }
    let(:product)  { create(:product) }
    let(:path)     { spree.root_path }
    let(:element)  { '[data-hook="homepage_sidebar_navigation"] .carousel' }

    before { product.update_attribute(:featured, true) }

    context "`#{type}` carousel" do
      it 'does not show when not enabled' do
        carousel.update_attribute(:location, nil)
        visit path
        expect(page).to_not have_css(element)
      end

      it 'shows when enabled' do
        carousel.update_attribute(:location, 'sidebar')
        visit path
        expect(page).to have_css(element)
      end
    end
  end
end
