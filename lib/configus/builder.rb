module Configus
  class Builder

    attr_reader :config

    def initialize(block) 
      @config = {}
      instance_eval &block
  	end

    def self.build(block)
      b = new(block)
      b.config
    end  

  	def env(name, params = {}, &block)
      @config[name] = Proxy.build(block)
  	end

  end
  
end