Spree Promo Image
=================

Adds a simple image upload field to Spree::Promotion (using Paperclip of course!).


Installation
------------

    gem 'spree_promo_image', :github => 'nebirhos/spree_promo_image'
    rails g spree_promo_image:install

then in your view:

```ruby
@promotion.image.attachment.url
```


Configuration
-------------

As usual you can override the default image styles with a decorator (app/models/promotion_image_decorator.rb):

```ruby
Spree::PromotionImage.class_eval do
  attachment_definitions[:attachment][:styles] = {
    :mini => '48x48#',
    :normal => '300x300>',
    :large => '940x300>'
  }
end
```

Tip: if you use [spree_editor](https://github.com/spree/spree_editor)
you can enable a wysiwyg editor for the promotion description field:

```ruby
Spree::EditorConfiguration.class_eval do
  preference :ids, :text, :default => 'product_description page_body promotion_description'
end
```


Testing
-------
No test yet, please forgive me :(

Copyright (c) 2012 nebirhos, released under the New BSD License
