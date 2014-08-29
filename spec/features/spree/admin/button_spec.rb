require 'spec_helper'

feature 'Action button in title bar' do
  stub_authorization!

  let(:carousel)      { create(:carousel) }
  let(:index_path)    { spree.admin_carousels_path }
  let(:edit_path)     { spree.edit_admin_carousel_path(carousel) }
  let(:index_element) { "[data-hook='toolbar'] a[href='#{index_path}']" }

  context 'carousels#edit' do
    before { visit edit_path }

    it 'links to carousels#index' do
      expect(page).to have_css(index_element)
    end
  end
end
