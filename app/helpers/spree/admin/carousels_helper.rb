module Spree
  module Admin
    module CarouselsHelper
      def carousel_location_values
        %w(
          home wrapper_top wrapper_bottom sidebar products
        ).each_with_object({}) do |value, collection|
          collection[Spree.t("carousel.admin.location.#{value}")] = value
        end
      end

      def carousel_easing_values
        %w(
          linear
          easeInSine easeOutSine easeInOutSine
          easeInQuad easeOutQuad easeInOutQuad
          easeInCubic easeOutCubic easeInOutCubic
          easeInQuart easeOutQuart easeInOutQuart
          easeInQuint easeOutQuint easeInOutQuint
          easeInExpo easeOutExpo easeInOutExpo
          easeInCirc easeOutCirc easeInOutCirc
          easeInBack easeOutBack easeInOutBack
          easeInElastic easeOutElastic easeInOutElastic
          easeInBounce easeOutBounce easeInOutBounce
        ).each_with_object({}) do |value, collection|
          collection[Spree.t("carousel.admin.easing.#{value.downcase}")] = value
        end
      end

      def carousel_lazy_load_values
        %w(ondemand progressive).each_with_object({}) do |value, collection|
          collection[Spree.t("carousel.admin.lazyload.#{value}")] = value
        end
      end

      def carousel_speed_values
        (100..2000).step(25).each_with_object([]) { |n, speed| speed << n }
      end

      def carousel_autoplay_speed_values
        (100..10_000).step(50).each_with_object([]) { |n, speed| speed << n }
      end

      def carousel_slides_values
        (1..10)
      end

      def carousel_limit_values
        (1..20)
      end
    end
  end
end
