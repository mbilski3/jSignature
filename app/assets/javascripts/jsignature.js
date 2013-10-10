//= require jSignature.min.js
//= require jSignature.min.noconflict.js
//= require flashcanvas.js

$(document).ready(function() {
    var x = $("#signature");
    x.jSignature();
    x.change(function(){
      $(".sign").val(x.jSignature("getData"));
    });
    
  });
