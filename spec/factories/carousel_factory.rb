FactoryGirl.define do
  factory :carousel, class: Spree::Carousel do
    title { Faker::Lorem.sentence(3) }
    location 'top_all'
  end
end
