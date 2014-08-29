FactoryGirl.define do
  factory :carousel_featured, class: Spree::Carousel do
    title { Faker::Lorem.sentence(3) }
    location 'featured'
  end
end
