require 'spec_helper'

describe Spree::Carousel do
  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:location) }
  end
end
