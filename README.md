# alertifyjs-rails

This gem provides [alertify.js](http://alertifyjs.com/) (v0.4) for Rails.


## Installation

In your Gemfile:

```ruby
gem 'alertifyjs-rails'
```

or system wide:

```console
$ gem install alertifyjs-rails
```


## Usage

The alertify files will be added to the asset pipeline and available for you to use. Add the following line to `app/assets/javascripts/application.js`

```javascript
//= require alertify
```

In order to get the CSS, add the following line to `app/assets/stylesheets/application.css.scss`

```css
/*
 *= require alertify
 *= require alertify/bootstrap
 */
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Copyright &copy; 2014 mkhairi, released under the MIT license
