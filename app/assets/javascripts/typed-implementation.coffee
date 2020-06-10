ready = ->
  Typed.new '.element',
    strings: [
      'Software development is the closes concept we have to magic. ^2000'
      "It's my goal to ensure that anyone with a passion for coding can become a true programming artisan."
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
