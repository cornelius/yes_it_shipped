$(document).on "ready page:load", ->
  setTimeout (->
    Turbolinks.enableTransitionCache true
    Turbolinks.visit location.toString()
    Turbolinks.enableTransitionCache false
  ), 2000

