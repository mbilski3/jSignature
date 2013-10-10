jSignature for Rails
==========

Add to your gemfile 
```
gem "jSignature", "~> 0.0.3"
```

and run

```
bundle install
```

or install manually

```
gem install jSignature
```




You can use helper method to add sign field to form:

```
<%= sign_form_field(:name) %>

which sends field 'name': data:image/png;base64,i1234lkj123;k4;l1j34l1kj3j... 
```
or
```
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
