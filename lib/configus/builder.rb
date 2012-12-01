module Configus
  class Builder 
    def initialize(block) 
      @config = {}
      instance_eval &block
	end

	def env(name, params = {}, &block)
	  proxy = Proxy.new(block)
	  @config[name] = proxy.config
	end

	def config
	  @config
	end
  end
  
end