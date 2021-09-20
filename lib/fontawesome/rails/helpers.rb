# frozen_string_literal: true

require_relative "helpers/version"
require_relative "helpers/railtie" if defined?(Rails)

module Fontawesome
  module Rails
    module Helpers
      class Engine < ::Rails::Engine; end
      class Error < StandardError; end
      # Your code goes here...
    end
  end
end
