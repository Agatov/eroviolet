$ ->

  $('#send-email-action-form').on 'click', ->

    username = $('input[name=username]')
    email = $('input[name=email]')

    shake_fields = []

    if username.val() < 2
      shake_fields.push username

    if email.val() < 5
      shake_fields.push email

    if shake_fields.length > 0
      shake_field(field) for field in shake_fields
      return false

    $.post(
      '/orders.json',
    {
      'order[username]': username.val(),
      'order[email]': email.val()
    },
    (data) =>

    )

    show_thank_you()
    reachGoal 'new_order'


window.show_thank_you = ->

  form_block = $(".form-block")

  form_block.animate({opacity: 0}, 1000, ->
    form_block.hide()
    thank_you_block = $('.form-thank-you')
    thank_you_block.show()
    thank_you_block.animate({opacity: 1}, 1000, ->
      $('input[type=text]').val('')
    )
  )