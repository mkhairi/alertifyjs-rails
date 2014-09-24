module AlertifyjsHelper  
  def alertify_flash
    valid_alertify = ["error", "message", "success", "warning"]
    jsReturn = javascript_tag()
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
        js_alertify << "setTimeout(function(){alertify.#{type}('#{j(msg)}');}, #{queue});"
      end
      queue += 100
    end    
    flash.clear
    jsReturn = javascript_tag(js_alertify)
    jsReturn.html_safe()
  end
end
