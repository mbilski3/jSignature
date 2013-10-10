require 'jSignature/view_helpers'

module JSignature
  class Railtie < Rails::Railtie
    initializer "jSignature.view_helpers" do |app|
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
