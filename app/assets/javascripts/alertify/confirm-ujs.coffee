{ fire } = Rails

$(document).on 'confirm', '[data-confirm]', (event) ->
  element = event.target
  message = element.getAttribute('data-confirm')
  if !element.getAttribute('data-confirmed')
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
        element.setAttribute('data-confirmed', true)
        element.setAttribute('data-confirm', '')
        tag = element.tagName;
        if tag == "BUTTON"
          fire(element, 'submit')
        else
          fire(element, 'click')
        element.setAttribute('data-confirm', message)
      oncancel: ->
        #element.setAttribute('data-confirmed', false)
      defaultFocus: 'cancel'
    ).show().autoCancel(5)
    return false
  else
    return true
