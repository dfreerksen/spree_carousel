module Spree
  module Admin
    class CarouselsController < BaseController
      before_action :set_carousel, only: [:edit, :update, :destroy]

      helper Spree::Admin::CarouselsHelper

      def index
        @carousels = Spree::Carousel.all
      end

      def new
        @carousel = Spree::Carousel.new
      end

      def create
        @carousel = Spree::Carousel.new(carousel_params)
        if @carousel.save
          redirect_to admin_carousels_path, flash: {
            success: Spree.t('carousel.admin.flash.success.create')
          }
        else
          render :new
        end
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

      def destroy
        @carousel.destroy
        flash[:success] = Spree.t('carousel.admin.flash.success.delete')
        respond_with(@object) do |format|
          format.html { redirect_to admin_carousels_path }
          format.js do
            render js: "window.location.href='#{admin_carousels_path}'"
          end
        end
      end

      protected

      def set_carousel
        @carousel = Spree::Carousel.find(params[:id])
      end

      def carousel_params
        params.require(:carousel).permit(:url, :label, :icon)
      end
    end
  end
end
