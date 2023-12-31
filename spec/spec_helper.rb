# frozen_string_literal: true

require 'pathname'
ROOT = Pathname.new(File.expand_path('..', __dir__))
$LOAD_PATH.unshift("#{ROOT}lib".to_s)
$LOAD_PATH.unshift("#{ROOT}spec".to_s)

require 'bundler/setup'
require 'bacon'
require 'mocha-on-bacon'
require 'pretty_bacon'
require 'cocoapods'

Mocha::Configuration.prevent(:stubbing_non_existent_method)

require 'cocoapods_plugin'

#-----------------------------------------------------------------------------#

module Pod
  # Disable the wrapping so the output is deterministic in the tests.
  #
  UI.disable_wrap = true

  # Redirects the messages to an internal store.
  #
  module UI
    @output = ''
    @warnings = ''

    class << self
      attr_accessor :output, :warnings

      def puts(message = '')
        @output << "#{message}\n"
      end

      def warn(message = '', _actions = [])
        @warnings << "#{message}\n"
      end

      def print(message)
        @output << message
      end
    end
  end
end

#-----------------------------------------------------------------------------#
