$ ->

  $('.nav-link').bind 'click', ->
    position = $("##{$(@).attr('rel_id')}").offset().top
    $('body').animate({scrollTop: "#{position}px"}, 300)
    false

  $('.show-comment-form').on 'click', ->
    $(@).hide()
    $('.comment-form').show()

    position = $(".comment-form").offset().top
    $('body').animate({scrollTop: "#{position - 100}px"}, 300)

    false

  $('#banners').bxSlider({
    nextSelector: '#next-banner',
    prevSelector: '#prev-banner',
    #nextText: "<img src='/images/right_arrow_icon_60.png'>",
    #prevText: "<img src='/images/left_arrow_icon_60.png'>",
    pagerCustom: '#banners-pager'
  })