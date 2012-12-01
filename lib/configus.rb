require "configus/version"
require "configus/core_ext/kernel.rb"

module Configus

  autoload 'Builder', 'configus/builder'
  autoload 'Proxy', 'configus/builder/proxy'
  autoload 'Config', 'configus/config'

	def self.build(current_env, &block)
		b = Configus::Builder.new(block)
		@config = b.config
    @current_env = current_env
	end

	def self.config
		Configus::Config.new(@config[@current_env])
	end

end