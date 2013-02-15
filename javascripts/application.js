$(function() {

  $('code').addClass('prettyprint');
  prettyPrint();

  if ($('body').height() < $(window).height()) {
    $('body > footer').addClass('stickbottom');
  }

  $('.other-posts').height($(document).height() - 780);

});
