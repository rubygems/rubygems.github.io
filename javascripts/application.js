
$(function() {
  var hashes;
  $('code').addClass('prettyprint');
  prettyPrint();
  if ($('body').height() < $(window).height()) {
    $('body > footer').addClass('stickbottom');
  }
  hashes = {};
  return $('img[data-author-email]').each(function() {
    var email;
    email = $(this).data("author-email");
    if (email !== "") {
      hashes[email] || (hashes[email] = $.md5(email));
      return $(this).attr("src", "https://secure.gravatar.com/avatar/" + hashes[email]);
    }
  });
});

$(window).load(function() {
  var post;
  post = $('.allcontent > article.post');
  return $('.other-posts').height(post.outerHeight() + parseInt(post.css('top')));
});
