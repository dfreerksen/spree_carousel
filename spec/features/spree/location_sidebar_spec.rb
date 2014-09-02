require 'spec_helper'

feature 'Taxon listing sidebar' do
  %w(featured latest).each do |type|
    let(:carousel) { create(:"carousel_#{type}") }
    let(:product)  { create(:product) }
    let(:path)     { spree.nested_taxons_path('brands') }
    let(:location) { 'sidebar_taxons' }
    let(:element)  { '[data-hook="taxon_sidebar_navigation"] .carousel' }

    before { product.update_attribute(:featured, true) }

    context "`#{type}`carousel" do
      it 'does not show when not enabled' do
        puts path
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

feature 'Home page sidebar' do
  %w(featured latest).each do |type|
    let(:carousel) { create(:"carousel_#{type}") }
    let(:product)  { create(:product) }
    let(:path)     { spree.root_path }
    let(:location) { 'sidebar_home' }
    let(:element)  { '[data-hook="homepage_sidebar_navigation"] .carousel' }

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

feature 'Product listing sidebar' do
  %w(featured latest).each do |type|
    let(:carousel) { create(:"carousel_#{type}") }
    let(:product)  { create(:product) }
    let(:path)     { spree.products_path }
    let(:location) { 'sidebar_products' }
    let(:element)  { '[data-hook="homepage_sidebar_navigation"] .carousel' }

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
