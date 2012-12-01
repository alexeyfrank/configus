require "configus/version"
require "configus/core_ext/kernel.rb"

module Configus
	def self.build(current_env, &block)
		b = Configus::Builder.new(block)
		b.config
	end
end
