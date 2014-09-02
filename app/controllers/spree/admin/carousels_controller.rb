module Spree
  module Admin
    class CarouselsController < BaseController
      before_action :set_carousel, only: [:edit, :update]

      helper Spree::Admin::CarouselsHelper

      def index
        @carousels = Spree::Carousel.all
      end

      def edit
        @disabled = Spree::Carousel.where.not(id: @carousel.id).map(&:location)
      end

      def update
        if @carousel.update_attributes(carousel_params)
          redirect_to admin_carousels_path, flash: {
            success: Spree.t('carousel.admin.flash.success.update')
          }
        else
          render :edit
        end
      end

      protected

      def set_carousel
        @carousel = Spree::Carousel.find(params[:id])
      end

      def carousel_params
        params.require(:carousel).permit!
      end
    end
  end
end
