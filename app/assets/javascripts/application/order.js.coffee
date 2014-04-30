$ ->



  $('#send-special-offer').on 'click', ->

    username = $('input[name=username]')
    phone = $('input[name=phone]')

    shake_fields = []

    if username.val() < 2
      shake_fields.push username

    if phone.val() < 10
      shake_fields.push phone

    if shake_fields.length > 0
      shake_field(field) for field in shake_fields
      return false

    $.post(
      '/orders',
    {
      'order[username]': username.val(),
      'order[phone]': phone.val()
    },
    (data) =>

    )

    show_thank_you()
    reachGoal 'new_order'


  $('#send-sale').on 'click', ->

    username = $('input[name=username]')
    phone = $('input[name=email]')

    shake_fields = []

    if username.val() < 2
      shake_fields.push username

    if phone.val() < 10
      shake_fields.push phone

    if shake_fields.length > 0
      shake_field(field) for field in shake_fields
      return false

    $.post(
      '/mailers/thirty_minutes.json',
    {
      'mail[username]': username.val(),
      'mail[email]': phone.val()
    },
    (data) =>

    )

    show_thank_you()
    reachGoal 'new_order'