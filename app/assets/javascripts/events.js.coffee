$ ->
  $('input.datepicker').datepicker(dateFormat: 'yy-mm-dd')

  $.timeago.settings.allowFuture = true
  $.timeago.settings.refreshMillis = 1000
  $.timeago.settings.strings =
        prefixAgo: null
        prefixFromNow: null
        suffixAgo: "ago"
        suffixFromNow: "from now"
        seconds: "less than a minute"
        minute: "%m:%s" #"about a minute"
        minutes: "%d minutes"
        hour: "about an hour"
        hours: "about %d hours"
        day: "a day"
        days: "%d days"
        month: "about a month"
        months: "%d months"
        year: "about a year"
        years: "%d years"
        numbers: [] 

  $("time").timeago().fadeIn(3000)


