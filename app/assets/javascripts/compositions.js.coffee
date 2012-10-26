$ ->
  $('#search_compositions').live 'keyup', ->
    query = $('#search_compositions').val()
    $.ajax
      type: 'GET',
      url: '/compositions/search',
      data: 'query='+query
