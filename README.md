# alertifyjs-rails

This gem provides [alertify.js](http://alertifyjs.com/) (v0.4.0) for Rails.


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
 *= require alertify/default
 *= require alertify/bootstrap
 */
```

flash helper, add the following line in layout

```html
<div id="flash_messages"><%= alertify_flash %></div>
```
