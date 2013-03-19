$ ->
  $('code').addClass('prettyprint')
  prettyPrint()

  if $('body').height() < $(window).height()
    $('body > footer').addClass('stickbottom')

  hashes = {}
  $('img[data-author-email]').each ->
    email = $(this).data("author-email")
    if email != ""
      hashes[email] ||= $.md5(email)
      $(this).attr("src", "https://secure.gravatar.com/avatar/#{hashes[email]}")

$(window).load ->
  post = $('.allcontent > article.post')
  $('.other-posts').height post.outerHeight() + parseInt(post.css('top'))
