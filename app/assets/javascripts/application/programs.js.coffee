$ ->

  hide_or_show(program, $('.programs-filter li a').first()) for program in $('.program-container')


  $('.programs-filter li a').on 'click', ->

    $('.programs-filter li').removeClass('active')
    $(@).parent().addClass('active')

    $('.program')

    link = $(@)


    hide_or_show(program, link) for program in $('.program-container')

    false


window.hide_or_show = (container, link) ->

  price = parseInt($(container).attr('price'))
  min_price = parseInt($(link).attr('min'))
  max_price = parseInt($(link).attr('max'))

  console.log "#{min_price} <= #{price}"


  if  min_price <= price and  max_price >= price
    $(container).show()
  else
    $(container).hide()