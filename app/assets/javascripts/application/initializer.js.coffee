$ ->

  $('.nav-link').bind 'click', ->
    position = $("##{$(@).attr('rel_id')}").offset().top
    $('body').animate({scrollTop: "#{position - 75}px"}, 300)
    false

  $('.show-comment-form').on 'click', ->
    $(@).hide()
    $('.comment-form').show()

    position = $(".comment-form").offset().top
    $('body').animate({scrollTop: "#{position - 100}px"}, 300)

    false