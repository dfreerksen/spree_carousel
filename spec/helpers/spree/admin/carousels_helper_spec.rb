require 'spec_helper'

describe Spree::Admin::CarouselsHelper do
  context '#carousel_location_values' do
    it 'should return 6 items' do
      expect(helper.carousel_location_values.size).to eq(6)
    end
  end

  context '#carousel_easing_values' do
    it 'should return 31 items' do
      expect(helper.carousel_easing_values.size).to eq(31)
    end
  end

  context '#carousel_lazy_load_values' do
    it 'should return 2 items' do
      expect(helper.carousel_lazy_load_values.size).to eq(2)
    end
  end

  context '#carousel_speed_values' do
    it 'should return 77 items' do
      expect(helper.carousel_speed_values.size).to eq(77)
    end
  end

  context '#carousel_autoplay_speed_values' do
    it 'should return 199 items' do
      expect(helper.carousel_autoplay_speed_values.size).to eq(199)
    end
  end

  context '#carousel_slides_values' do
    it 'should return 10 items' do
      expect(helper.carousel_slides_values.size).to eq(10)
    end
  end

  context '#carousel_limit_values' do
    it 'should return 20 items' do
      expect(helper.carousel_limit_values.size).to eq(20)
    end
  end
end
