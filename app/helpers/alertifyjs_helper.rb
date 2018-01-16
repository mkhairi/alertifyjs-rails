module AlertifyjsHelper
  
  def alertify_notifier(wait)
    valid_alertify = ["error", "message", "success", "warning"]
    js_alertify = ""
    queue = 0
    flash.each do |type, message|
      next if message.blank?
      type = type.to_s   
      case type   
      when "alert"
        type = "error"
      when "notice"
        type = "success"
      when "info"
        type = "message"
      end      
     next unless valid_alertify.include?(type)         
      Array(message).each do |msg|
        js_alertify << "setTimeout(function(){alertify.#{type}('#{j(msg)}', #{wait});}, #{queue});"
      end
      queue += 100
    end    
    flash.clear
    return js_alertify.html_safe()
  end
  
  def alertify_flash(**args)   
    wait = args[:wait].nil? ? 5 : args[:wait]
    jsReturn = javascript_tag(alertify_notifier(wait))
  end
  
  def alertify_flash_now(**args) 
    wait = args[:wait].nil? ? 5 : args[:wait]
    alertify_notifier(wait)
  end
  
end
