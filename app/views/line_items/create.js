$('#cart').html('<%= escape_javascript(render(@cart)) %>');

$('#current_item').css({'background-color':'blue', 'color':'white'}).
  animate({'background-color':'white', 'color':'black'}, 1000);
  