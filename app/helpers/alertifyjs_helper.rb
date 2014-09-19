module AlertifyjsHelper
  ALERT_TYPES = [:error, :info, :success, :warning] unless const_defined?(:ALERT_TYPES)

  def alertify_flash
    jsReturn = javascript_tag()
    flash.each do |type, message|
      # Skip empty messages, e.g. for devise messages set to nothing in a locale file.
      next if message.blank?
      
      type = :success if type == :notice
      type = :error   if type == :alert
      next unless ALERT_TYPES.include?(type)

      js_alertify = ""
      Array(message).each do |msg|
        js_alertify << "alertify.#{type}('#{j(msg)}');\n" if msg;
      end
      jsReturn = javascript_tag(js_alertify)
    end
    flash.clear
    jsReturn.html_safe()
  end
end