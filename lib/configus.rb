require "configus/version"
require "configus/core_ext/kernel.rb"

module Configus

  autoload 'Builder', 'configus/builder'
  autoload 'Proxy', 'configus/builder/proxy'

	def self.build(current_env, &block)
		b = Configus::Builder.new(block)
		@config = b.config
	end

	def self.config
		@config
	end

end