$ ->



  $('#send-special-offer').on 'click', ->

    username = $('input[name=username]')
    email = $('input[name=email]')

    shake_fields = []

    if username.val() < 2
      shake_fields.push username

    if email.val() < 10
      shake_fields.push email

    if shake_fields.length > 0
      shake_field(field) for field in shake_fields
      return false

    $.post(
      '/mailers/special_offer',
    {
      'mail[username]': username.val(),
      'mail[email]': email.val()
    },
    (data) =>

    )

    show_thank_you()
    reachGoal 'new_order'