require 'spec_helper'

describe Spree::Admin::CarouselsController do
  stub_authorization!

  let(:index_path)   { spree.admin_carousels_path }
  let(:valid_item)   { {title: Faker::Lorem.sentence(3)} }
  let(:invalid_item) { {title: ''} }

  context '#index' do
    it 'loads `index` template' do
      spree_get :index
      expect(response).to render_template(:index)
    end
  end

  %w(featured latest).each do |type|
    let(:carousel) { create(:"carousel_#{type}") }

    context '#edit' do
      it "loads `edit` template for `#{type}` carousel" do
        spree_get :edit, id: carousel.id
        expect(response).to render_template(:edit)
      end
    end

    context '#update' do
      context 'fails with invalid params' do
        it "then renders `edit` for `#{type}` carousel" do
          spree_post :update, id: carousel.id, carousel: invalid_item
          expect(response).to render_template(:edit)
        end
      end

      it "updates link item for `#{type}` carousel" do
        spree_post :update, id: carousel.id, carousel: valid_item
        expect(flash[:success]).to(
          eq Spree.t('carousel.admin.flash.success.update')
        )
        expect(response).to redirect_to(index_path)
      end
    end
  end
end
