# IconHelper

This is a simple view helper for easy use of glyphicons (bootstrap 3) or font awesome (bootstrap 4).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'icon_helper', github: 'thiesp/icon-helper-boostrap3-glyphicon-and-bootstrap4-font-awesome'
```

And then execute:

    $ bundle

## Usage

The `bootstrap_icon(icon,text = nil)` will generate some html, with an icon and optional text.

For a calendar button with text use something like:

```
<%= link_to bootstrap_icon('calendar',I18n.t('calendar')), calendar_path, class: "btn btn-success" %> 
```