require 'spec_helper'

describe Spree::Admin::CarouselsHelper do
  context '#carousel_location_values' do
    it 'should return 6 items' do
      expect(helper.carousel_location_values).to have(6).items
    end
  end

  context '#carousel_easing_values' do
    it 'should return 31 items' do
      expect(helper.carousel_easing_values).to have(31).items
    end
  end

  context '#carousel_lazy_load_values' do
    it 'should return 2 items' do
      expect(helper.carousel_lazy_load_values).to have(2).items
    end
  end

  context '#carousel_speed_values' do
    it 'should return 77 items' do
      expect(helper.carousel_speed_values).to have(77).items
    end
  end

  context '#carousel_autoplay_speed_values' do
    it 'should return 199 items' do
      expect(helper.carousel_autoplay_speed_values).to have(199).items
    end
  end

  context '#carousel_slides_values' do
    it 'should return 10 items' do
      expect(helper.carousel_slides_values).to have(10).items
    end
  end

  context '#carousel_limit_values' do
    it 'should return 20 items' do
      expect(helper.carousel_limit_values).to have(20).items
    end
  end
end
