require 'spec_helper'

feature 'Home page' do
  %w(featured latest).each do |type|
    let(:carousel) { create(:"carousel_#{type}") }
    let(:product)  { create(:product) }
    let(:path)     { spree.root_path }
    let(:location) { 'home' }
    let(:element)  { '#header + .carousel' }

    before { product.update_attribute(:featured, true) }

    context "`#{type}`carousel" do
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
