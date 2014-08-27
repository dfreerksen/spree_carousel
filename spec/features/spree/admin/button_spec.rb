require 'spec_helper'

feature 'Action button in title bar' do
  stub_authorization!

  let(:carousel)      { create(:carousel) }
  let(:index_path)    { spree.admin_carousels_path }
  let(:new_path)      { spree.new_admin_carousel_path }
  let(:edit_path)     { spree.edit_admin_carousel_path(carousel) }
  let(:index_element) { "[data-hook='toolbar'] a[href='#{index_path}']" }
  let(:new_element)   { "[data-hook='toolbar'] a[href='#{new_path}']" }

  context 'carousels#index' do
    before { visit index_path }

    it 'links to carousels#new' do
      expect(page).to have_css(new_element)
    end
  end

  context 'carousels#new' do
    before { visit new_path }

    it 'links to carousels#index' do
      expect(page).to have_css(index_element)
    end
  end

  context 'carousels#edit' do
    before { visit edit_path }

    it 'links to carousels#index' do
      expect(page).to have_css(index_element)
    end
  end
end
