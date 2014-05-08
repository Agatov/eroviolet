$ ->

  hide_or_show_programs(program, $('.programs-filter li a').first()) for program in $('.program')
  hide_extras()


  $('.programs-filter li a').on 'click', ->

    $('.programs-filter li').removeClass('active')
    $(@).parent().addClass('active')

    link = $(@)

    console.log $(@).attr('rel')

    if $(@).attr('rel') == 'programs'
      hide_extras()
      hide_or_show_programs(program, link) for program in $('.program')
    else
      show_extras()


    false


  $('.program').on 'click', ->

    $('.program-desc-modal .program-name').text $(@).find('.program-name').text()
    $('.program-desc-modal .program-desc').text $(@).find('.program-desc').text()

    $('.program-desc-modal-overlay').show()
    $('.program-desc-modal').show()


  $('.program-desc-modal-overlay').on 'click', ->
    $('.program-desc-modal-overlay').hide()
    $('.program-desc-modal').hide()


window.show_extras = ->
  $('.program[rel=program]').hide()
  $('.program[rel=extra]').show()

window.hide_extras = ->
  $('.program[rel=extra]').hide()



window.hide_or_show_programs = (container, link) ->

  price = parseInt($(container).attr('price'))
  min_price = parseInt($(link).attr('min'))
  max_price = parseInt($(link).attr('max'))

  if  min_price <= price and  max_price >= price
    $(container).show()
  else
    $(container).hide()