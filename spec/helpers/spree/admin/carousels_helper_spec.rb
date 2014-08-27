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

  context '#speed_values' do
    it 'should return 77 items' do
      expect(helper.speed_values).to have(77).items
    end
  end

  context '#autoplay_speed_values' do
    it 'should return 199 items' do
      expect(helper.autoplay_speed_values).to have(199).items
    end
  end
end
