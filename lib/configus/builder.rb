module Configus
  class Builder 
    def initialize(block) 
      @config = {}
      instance_eval &block
  	end

  	def env(name, params = {}, &block)
  	  b = Proxy.new(block)
      @config[name] = b.config
  	end

    def config
      @config
    end

  end
  
end