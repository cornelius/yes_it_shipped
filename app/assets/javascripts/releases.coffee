$(document).on "ready page:load", ->
  if $("#timeline").length > 0
    setTimeout (->
      Turbolinks.enableTransitionCache true
      Turbolinks.visit location.toString()
      Turbolinks.enableTransitionCache false
    ), 2000

