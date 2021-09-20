require 'rails'
require 'fontawesome/rails/helpers/helper'

module Fontawesome
  module Rails
    module Helpers
      class Railtie < ::Rails::Railtie
        initializer "fontawesome.action_view" do
          ActiveSupport.on_load(:action_view) do
            include Fontawesome::Rails::Helpers::Helper
          end
        end
      end
    end
  end
end