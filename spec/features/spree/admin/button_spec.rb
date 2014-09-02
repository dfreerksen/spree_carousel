require 'spec_helper'

feature 'Action button in title bar' do
  stub_authorization!

  let(:index_path)    { spree.admin_carousels_path }
  let(:index_element) { "[data-hook='toolbar'] a[href='#{index_path}']" }

  %w(featured latest).each do |type|
    let(:carousel)  { create(:"carousel_#{type}") }
    let(:edit_path) { spree.edit_admin_carousel_path(carousel) }

    context 'carousels#edit' do
      before { visit edit_path }

      it "links to carousels#index from `#{type}` carousel edit page" do
        expect(page).to have_css(index_element)
      end
    end
  end
end
