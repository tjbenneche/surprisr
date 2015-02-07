
$(document).on 'click', '.next', (e) ->
  _this = $(this)
  $.when(_this.parent().fadeOut()).done () ->
    _this.parent().next('.question').fadeIn()

$(document).on 'click', '.prev', (e) ->
  _this = $(this)
  $.when(_this.parent().fadeOut()).done () ->
    _this.parent().prev('.question').fadeIn()
