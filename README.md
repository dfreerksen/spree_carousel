# Spree Carousel

Create product carousels for different partos of the site using [http://kenwheeler.github.io/slick/](Slick). This extension only works with products. It does not work with custom items like HTML or image content.

> NOTE: Not ready for production


## Carousel Types

#### Featured

Populate the carousel with products marked as 'Featured' in the admin.

#### Recent

Populate the carousel with recently created products based on `created_at` column in the database.


## Installation

Add this line to your Spree application's Gemfile:

    gem 'spree_carousel', github: 'dfreerksen/spree_carousel'

Run the bundle command to install it:

    bundle install

After installing, you'll need to run the generator:

    bundle exec rails g spree_carousel:install


## TODO
- Taxon sidebar carousel
- Per carousel breakpoints
- More types of content
  - 'popular' carousel based on purchases


## Testing

Generate a dummy application

    bundle exec rake test_app

Running tests

    bundle exec rake spec


## Contributing

1. Fork it ( https://github.com/dfreerksen/spree_carousel/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
