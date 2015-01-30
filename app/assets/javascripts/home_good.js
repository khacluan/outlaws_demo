//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_self


$(document).ready(function(){

  $(document.body).delegate('button.show-size', 'click', function(){
    $('ul li div.size').removeClass('disable');
    return false;
  });

  $.get('/home_good/sidebar')
});