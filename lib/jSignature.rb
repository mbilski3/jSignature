require 'jSignature/railtie' if defined?(Rails)

module JSignature
  module Rails
    class Engine < ::Rails::Engine
    end
  end
end
