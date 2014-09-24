$.rails.allowAction = (link) ->
  return true unless link.attr('data-confirm')
  $.rails.showConfirmDialog(link) # look bellow for implementations
  false # always stops the action since code runs asynchronously

$.rails.confirmed = (link) ->
  link.removeAttr('data-confirm')
  if link.data('method')=='delete'
    link.trigger('click.rails')
  else    
    if link.get(0).click
       link.get(0).click()
  
$.rails.showConfirmDialog = (link) ->
  message = link.data 'confirm'
  #grab the dialog instance and set multiple settings at once.
  alertify.dialog("confirm").setting(
    theme:
      ok: "btn btn-primary"
      cancel: "btn btn-danger"
    title: 'Your confirmation is needed'
    transition:'pulse'
    labels:
      ok: "Confirm!"
      cancel: "Cancel"  
    message: message
    onok: ->      
      $.rails.confirmed link
      #alertify.success "Nice!"  
    oncancel: ->
      #alertify.error "Action Canceled!"
    defaultFocus: 'cancel'
  ).show().autoCancel(5)
