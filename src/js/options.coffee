$ ()->
  $('#access_token1').val(localStorage.accessToken1)
  $('#end_point1').val(localStorage.endPoint1)
  $('#access_token2').val(localStorage.accessToken2)
  $('#end_point2').val(localStorage.endPoint2)
  $('#access_token3').val(localStorage.accessToken3)
  $('#end_point3').val(localStorage.endPoint3)

  $('#show_labels_' + (localStorage.showLabels || 'yes')).prop('checked', true)
  $('#show_mergeable_' + (localStorage.showMergeable || 'yes')).prop('checked', true)
  $('#notification_' + (localStorage.notification || 'yes')).prop('checked', true)
  $('#default_filter_' + (localStorage.defaultFilter || 'assigned')).prop('checked', true)
 
  $('#save_btn').click((e)->
    e.preventDefault()

    localStorage.accessToken1 = $('#access_token1').val()
    endPoint1 = $('#end_point1').val()
    if !!endPoint1
      endPoint1 = endPoint1.replace(/\/*$/, '\/')
    localStorage.endPoint1 = endPoint1 || ''

    localStorage.accessToken2 = $('#access_token2').val()
    endPoint2 = $('#end_point2').val()
    if !!endPoint2
      endPoint2 = endPoint2.replace(/\/*$/, '\/')
    localStorage.endPoint2 = endPoint2 || ''

    localStorage.accessToken3 = $('#access_token3').val()
    endPoint3 = $('#end_point3').val()
    if !!endPoint3
      endPoint3 = endPoint3.replace(/\/*$/, '\/')
    localStorage.endPoint3 = endPoint3 || ''

    localStorage.showLabels = String($('input[name=show_labels]:checked').val())
    localStorage.showMergeable = String($('input[name=show_mergeable]:checked').val())
    localStorage.notification = String($('input[name=notification]:checked').val())
    localStorage.defaultFilter = String($('input[name=default_filter]:checked').val())

    chrome.runtime.sendMessage {
      from: "options", subject: "updateBadge"
    }, ()-> {}

    alert('Options have been saved successfully.')
  )
