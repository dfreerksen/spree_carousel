require 'spec_helper'

describe Spree::Admin::CarouselsController do
  stub_authorization!

  let(:carousel)    { create(:carousel) }
  let(:index_path)  { spree.admin_carousels_path }
#   let(:valid_item) do
#     {
#       url:   'https://twitter.com/spreecommerce',
#       label: 'Follow me',
#       icon:  'twitter'
#     }
#   end
#   let(:invalid_item) { valid_item.merge!(url: '') }

  context '#index' do
    it 'loads `index` template' do
      spree_get :index
      expect(response).to render_template(:index)
    end
  end

  context '#edit' do
    it 'loads `edit` template' do
      spree_get :edit, id: carousel.id
      expect(response).to render_template(:edit)
    end
  end

  context '#update' do
    context 'fails with invalid params' do
      xit 'then renders `edit`' do
        spree_post :update, id: link.id, social_link: invalid_item
        expect(response).to render_template(:edit)
      end
    end

    xit 'updates link item' do
      spree_post :update, id: carousel.id, social_link: valid_item
      expect(flash[:success]).to(
        eq Spree.t('carousel.admin.flash.success.update')
      )
      expect(response).to redirect_to(index_path)
    end
  end
end
