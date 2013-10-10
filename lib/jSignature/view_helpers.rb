module JSignature
  module ViewHelpers
    def sign_form_field(name, height = 200, width = 500)
      render :inline => "<%= text_field_tag(:#{name},\"\", :hidden => true) %>
        <div id='#{name}_sig'></div><script> $(document).ready(function() {
    var x = $('##{name}_sig');
    x.jSignature({'height': #{height}, 'width': #{width}});
    x.change(function(){
      $('##{name}').val(x.jSignature('getData'));
    });
    
  });</script>"
    end
  end
end
