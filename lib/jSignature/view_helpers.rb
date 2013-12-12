include ActionView::Helpers::TagHelper

module JSignature
  module ViewHelpers

    def sign_form_field_tag(name)
      return text_field_tag(name,"", :hidden => true)+content_tag(:div,"",:id => "#{name}_sig")+
      content_tag(:script,"$(document).ready(function() {
    var x = $('##{name}_sig');
    x.jSignature();
    x.change(function(){
      $('##{name}').val(x.jSignature('getData'));
    });
    
  });".html_safe)
    end

    def sign_field(name)
      return text_field(name,:hidden => true)+content_tag(:div, "",:id => "#{name}_sig")+
      content_tag(:script, "$(document).ready(function() {
    var x = $('##{name}_sig');
    x.jSignature();
    x.change(function(){
      $('##{@object_name}_#{name}').val(x.jSignature('getData'));
    });
    
  });".html_safe)
    end
  end
end
