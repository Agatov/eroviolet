$ ->

  $('.nav-link').bind 'click', ->
    position = $("##{$(@).attr('rel_id')}").offset().top
    $('body').animate({scrollTop: "#{position}px"}, 300)
    false

  $('.show-comment-form').on 'click', ->

    if $(@).attr('parent_id')
      $('#parent_id').val($(@).attr('parent_id'))
      $('.comment-form-title').text('Ответить на комментарий')
    else
      $('#parent_id').val('')
      $('.comment-form-title').text('Оставить отзыв о девушке')

    $('.comment-form-overlay').show()
    $('.comment-form').show()

    false

  $('.comment-form-overlay').on 'click', ->
    $(@).hide()
    $('.comment-form').hide()

  $('#banners').bxSlider({
    nextSelector: '#next-banner',
    prevSelector: '#prev-banner',
    #nextText: "<img src='/images/right_arrow_icon_60.png'>",
    #prevText: "<img src='/images/left_arrow_icon_60.png'>",
    pagerCustom: '#banners-pager'
  })


  $('.get-sale').on 'click', ->
    $('.action-bottom .wrapper .info').hide()
    $('.action-bottom .wrapper .form').show()