module Alertifyjs #:nodoc:
  module Rails #:nodoc:
    class Railtie < ::Rails::Railtie
      config.before_configuration do
        if config.action_view.javascript_expansions
          config.action_view.javascript_expansions[:defaults] << 'alertify'
        end
      end
    end
  end
end