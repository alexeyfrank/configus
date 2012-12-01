module Configus
  class Builder 
    def initialize(block) 
      @config = {}
      instance_eval &block
  	end

  	def env(name, params = {}, &block)
  	  @config[name] = Proxy.new(block)
  	end

    def config
      @config
    end

  end
  
end