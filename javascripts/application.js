$(function() {
  $('code').addClass('prettyprint');
  prettyPrint();

  if ($('body').height() < $(window).height()) {
    $('body > footer').addClass('stickbottom');
  }
});

$(window).load(function() {
  $('.other-posts').height(
    $('.allcontent > article.post').outerHeight() + 
    parseInt($('.allcontent > article.post').css('top'))
  );
});
