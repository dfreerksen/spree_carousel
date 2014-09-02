require 'spec_helper'

feature 'Updating carousel' do
  stub_authorization!

  let(:index_path) { spree.admin_carousels_path }
  let(:title_value) { 'This is the updated title for this carousel' }

  context 'via form input' do
    let(:carousel)  { create(:carousel_featured) }
    let(:edit_path) { spree.edit_admin_carousel_path(carousel) }

    scenario 'user can edit form' do
      visit edit_path
      fill_in Spree.t('carousel.admin.label.title'), with: title_value
      click_button Spree.t('actions.update')

      expect(page.status_code).to be(200)
    end
  end
end
