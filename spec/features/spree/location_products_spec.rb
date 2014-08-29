require 'spec_helper'

feature 'Product details' do
  %w(featured latest).each do |group|
    context "`#{group}`carousel" do
      xit 'shows when enabled' do
      end
      xit 'does not show when not enabled' do
      end
    end
  end
end
