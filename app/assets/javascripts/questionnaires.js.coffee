
$(document).on 'click', '.next, .get-started', (e) ->
  _this = $(this)
  $.when(_this.parents().eq(1).fadeOut()).done () ->
    _this.parents().eq(1).next('.question').fadeIn().find('.answer:first').focus()


$(document).on 'click', '.prev', (e) ->
  _this = $(this)
  $.when(_this.parents().eq(1).fadeOut()).done () ->
    _this.parents().eq(1).prev('.question').fadeIn().find('.answer:first').focus()



#might want to put in additional conditional for address field so enter advances to next field
$(document).on 'keydown', '.question .answer, .question input', (e) ->
  _this = $(this)
  if e.keyCode is 13
    e.preventDefault()
    _this.siblings('.next').trigger 'click'

$(document).on 'click', '.question input[type="radio"]', (e) ->
  val = $(this).attr('value')
  $('#q1-hidden').attr 'value', val


$(document).on 'click', '#nope_lol', (e) ->
  e.preventDefault()
  cornifyRickRoll()

cornifyRickRoll = () ->
  i = 0
  while i < 1000
    cornify_add()
    i++
  setInterval (->
    # this code is executed every 500 milliseconds:
    window.location.href = "http://www.youtube.com/watch?v=dQw4w9WgXcQ"
  ), 2500

$(document).on 'click', '.hamburger', (e) ->
  $(this).toggleClass "shifted"
  $(this).siblings('nav').toggleClass "shifted"

$(document).on 'click', '.cage', (e) ->
  val = $(this).find('p').text()
  $('#q2-hidden').attr 'value', val
