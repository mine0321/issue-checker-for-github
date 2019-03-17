$ ()->
  $('#close_button').on 'click', (e)->
    e.preventDefault()
    window.close()

  $(document).on 'click', 'a:not([data-no-link])', (e)->
    e.preventDefault()
    href = $(this).attr('href')
    if href[0] != '#'
      chrome.tabs.create({url: href})
