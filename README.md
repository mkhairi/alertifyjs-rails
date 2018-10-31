# alertifyjs-rails [![Gem Version](https://badge.fury.io/rb/alertifyjs-rails.svg)](http://badge.fury.io/rb/alertifyjs-rails)

This gem provides [alertify.js](http://alertifyjs.com/) for Rails.


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

* if you use jquery-ujs
```javascript
//= require alertify/confirm-modal
```

* if you use rails-ujs (default rails 5)
```javascript
//= require alertify/confirm-ujs
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

or with wait timeout option

```html 
<head>
<%= alertify_flash(wait: 20) %>
</head>
```

or in your js request format
```js
<%= alertify_flash_now %>
````

**notes
The default content security policy for Rails 5.2 blocked the functionality of this flash helper. An initial workaround is to add :unsafe_inline as an option to the policy.script_src in development 

```ruby
policy.script_src  :self, :https, :unsafe_inline

```



More option? read  [alertify.js](http://alertifyjs.com/) documentation [here](http://alertifyjs.com/) 

