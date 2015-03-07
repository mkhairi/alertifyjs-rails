module Alertifyjs #:nodoc:
  module Rails #:nodoc:
    class Engine < ::Rails::Engine
      initializer 'alertifyjs-rails.assets.precompile' do |app|
        %w(stylesheets javascripts).each do |sub|
          app.config.assets.paths << root.join('app/assets', sub).to_s
        end
      end
    end
  end
end
