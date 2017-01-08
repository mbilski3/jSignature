jSignature for Rails
==========

Add to your gemfile 
``` ruby
gem "jSignature", "~> 0.0.6"
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
You can Specify the capture format as details in the jSignature as follows ```
``` ruby
<%= form_for :model do |f| %>
  <%= f.sign_field(:name, :svg) %>
  <%= f.submit("Send") %>
<% end %>

which sends field 'model[name]': image/svg+xml,<?xml version="1.0" encoding="UTF-8" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="367" height="103"><path fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" d="M 86 102 c -0.38 0 -... 


License:
```
MIT

All files from app/assets/javascripts (except jsignature.js) directory are Copyright 2012 Willow Systems Corp
```

Feedback
==========
If you are using this gem, give me a feedback. Nice to hear your suggestion for future developement
