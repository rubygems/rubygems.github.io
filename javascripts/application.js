$(function() {

  $('code').addClass('prettyprint');
  prettyPrint();

  if ($('body').height() < $(window).height()) {
    $('body > footer').addClass('stickbottom');
  }

});
