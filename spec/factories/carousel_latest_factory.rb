FactoryGirl.define do
  factory :carousel_latest, class: Spree::Carousel do
    title { Faker::Lorem.sentence(3) }
    location 'latest'
  end
end
