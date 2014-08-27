module Spree
  module Admin
    module CarouselsHelper
      def carousel_location_values
        {
          Spree.t('carousel.admin.location.home')            => 'home',
          Spree.t('carousel.admin.location.top_all')         => 'top_all',
          Spree.t('carousel.admin.location.bottom_all')      => 'bottom_all',
          Spree.t('carousel.admin.location.bottom_product')  => 'bottom_product',
          Spree.t('carousel.admin.location.sidebar_listing') => 'sidebar_listing',
          Spree.t('carousel.admin.location.sidebar_product') => 'sidebar_product'
        }
      end

      def carousel_easing_values
        {
          Spree.t('carousel.admin.easing.linear')           => 'linear',
          Spree.t('carousel.admin.easing.easeinsine')       => 'easeInSine',
          Spree.t('carousel.admin.easing.easeoutsine')      => 'easeOutSine',
          Spree.t('carousel.admin.easing.easeinoutsine')    => 'easeInOutSine',
          Spree.t('carousel.admin.easing.easeinquad')       => 'easeInQuad',
          Spree.t('carousel.admin.easing.easeoutquad')      => 'easeOutQuad',
          Spree.t('carousel.admin.easing.easeinoutquad')    => 'easeInOutQuad',
          Spree.t('carousel.admin.easing.easeincubic')      => 'easeInCubic',
          Spree.t('carousel.admin.easing.easeoutcubic')     => 'easeOutCubic',
          Spree.t('carousel.admin.easing.easeinoutcubic')   => 'easeInOutCubic',
          Spree.t('carousel.admin.easing.easeinquart')      => 'easeInQuart',
          Spree.t('carousel.admin.easing.easeoutquart')     => 'easeOutQuart',
          Spree.t('carousel.admin.easing.easeinoutquart')   => 'easeInOutQuart',
          Spree.t('carousel.admin.easing.easeinquint')      => 'easeInQuint',
          Spree.t('carousel.admin.easing.easeoutquint')     => 'easeOutQuint',
          Spree.t('carousel.admin.easing.easeinoutquint')   => 'easeInOutQuint',
          Spree.t('carousel.admin.easing.easeinexpo')       => 'easeInExpo',
          Spree.t('carousel.admin.easing.easeoutexpo')      => 'easeOutExpo',
          Spree.t('carousel.admin.easing.easeinoutexpo')    => 'easeInOutExpo',
          Spree.t('carousel.admin.easing.easeincirc')       => 'easeInCirc',
          Spree.t('carousel.admin.easing.easeoutcirc')      => 'easeOutCirc',
          Spree.t('carousel.admin.easing.easeinoutcirc')    => 'easeInOutCirc',
          Spree.t('carousel.admin.easing.easeinback')       => 'easeInBack',
          Spree.t('carousel.admin.easing.easeoutback')      => 'easeOutBack',
          Spree.t('carousel.admin.easing.easeinoutback')    => 'easeInOutBack',
          Spree.t('carousel.admin.easing.easeinelastic')    => 'easeInElastic',
          Spree.t('carousel.admin.easing.easeoutelastic')   => 'easeOutElastic',
          Spree.t('carousel.admin.easing.easeinoutelastic') => 'easeInOutElastic',
          Spree.t('carousel.admin.easing.easeinbounce')     => 'easeInBounce',
          Spree.t('carousel.admin.easing.easeoutbounce')    => 'easeOutBounce',
          Spree.t('carousel.admin.easing.easeinoutbounce')  => 'easeInOutBounce'
        }
      end

      def carousel_lazy_load_values
        {
          Spree.t('carousel.admin.lazyload.ondemand')    => 'ondemand',
          Spree.t('carousel.admin.lazyload.progressive') => 'progressive'
        }
      end

      def carousel_speed_values
        speed = []
        (100..2000).step(25) do |n|
          speed << n
        end
        speed
      end

      def carousel_autoplay_speed_values
        speed = []
        (100..10000).step(50) do |n|
          speed << n
        end
        speed
      end
    end
  end
end
