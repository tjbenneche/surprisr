
$(document).on 'click', '.next', (e) ->
  _this = $(this)
  $.when(_this.parent().fadeOut()).done () ->
    _this.parent().next('.question').fadeIn().find('.answer:first').focus()


$(document).on 'click', '.prev', (e) ->
  _this = $(this)
  $.when(_this.parent().fadeOut()).done () ->
    _this.parent().prev('.question').fadeIn().find('.answer:first').focus()



#might want to put in additional conditional for address field so enter advances to next field
$(document).on 'keydown', '.question .answer, .question input', (e) ->
  _this = $(this)
  if e.keyCode is 13
    e.preventDefault()
    _this.siblings('.next').trigger 'click'

$(document).on 'click', '.question input[type="radio"]', (e) ->
  val = $(this).attr('value')
  $('#q1-hidden').attr 'value', val
