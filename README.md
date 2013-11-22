jSignature for Rails
==========

Add to your gemfile 
``` ruby
gem "jSignature", "~> 0.0.5"
```

and run

``` ruby
bundle install
```

or install manually

``` ruby
gem install jSignature
```




You can use helper method to add sign field to form:

``` ruby
<%= sign_form_field_tag(:name) %>

which sends field 'name': data:image/png;base64,i1234lkj123;k4;l1j34l1kj3j... 
```
or
``` ruby
<%= form_for :model do |f| %>
  <%= f.sign_field(:name) %>
  <%= f.submit("Send") %>
<% end %>

which sends field 'model[name]': data:image/png;base64,i1234lkj123;k4;l1j34l1kj3j... 
```

License:
```
MIT

All files from app/assets/javascripts (except jsignature.js) directory are Copyright 2012 Willow Systems Corp
```

Feedback
==========
If you are using this gem, give me a feedback. Nice to hear your suggestion for future developement
