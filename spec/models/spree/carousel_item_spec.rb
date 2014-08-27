require 'spec_helper'

describe Spree::CarouselItem do
  context 'validations' do
    it { should validate_presence_of(:carousel_id) }
    it { should validate_presence_of(:product_id) }
    it { should validate_presence_of(:position) }
  end
end
