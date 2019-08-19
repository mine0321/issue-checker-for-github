window.githubClient = {
  get: (url, options)->
    data = $.extend({}, options)
    if url.indexOf(localStorage.endPoint1) != -1
      data.access_token = localStorage.accessToken1
    else if url.indexOf(localStorage.endPoint2) != -1
      data.access_token = localStorage.accessToken2
    else if url.indexOf(localStorage.endPoint3) != -1
      data.access_token = localStorage.accessToken3

    return $.ajax {
      url: url,
      data: data,
      type: 'GET',
      cache: false
    }
  issues1: (options)->
    githubClient.get (localStorage.endPoint1 || 'https://api.github.com/') + 'issues', $.extend({filter: 'assigned', state: 'open'}, options)
  issues2: (options)->
    githubClient.get (localStorage.endPoint2 || 'https://api.github.com/') + 'issues', $.extend({filter: 'assigned', state: 'open'}, options)
  issues3: (options)->
    githubClient.get (localStorage.endPoint3 || 'https://api.github.com/') + 'issues', $.extend({filter: 'assigned', state: 'open'}, options)
}
