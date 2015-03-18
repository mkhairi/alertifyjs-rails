# alertifyjs-rails

This gem provides [alertify.js](http://alertifyjs.com/) (v1.3.0) for Rails.


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

Optional js(coffe script) replace browser confirm dialog
```javascript
//= require alertify/confirm-modal
```

In order to get the CSS, add the following line to `app/assets/stylesheets/application.css`

```css
/*
 *= require alertify
 *= require alertify/default
 *= require alertify/bootstrap
 */
```

or if you using scss `app/assets/stylesheets/application.scss`

```scss
 @import "alertify";
 @import "alertify/default";
 @import "alertify/bootstrap";
```

flash helper, add the following line in layout

```html 
<head>
<%= alertify_flash %>
</head>
```

More option? read  [alertify.js](http://alertifyjs.com/) documentation [here](http://alertifyjs.com/) 

