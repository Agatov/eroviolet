$ ->

  $('.preview').on 'click', ->
    $('.photo img').attr('src', $(@).attr('full_src'))