module Configus

  class Builder::Proxy

    attr_reader :config

    def initialize(block)
      @config = {}
      instance_eval &block
    end

    def self.build(block)
      b = new(block)
      b.config
    end

    def method_missing(meth, *args, &block)
      if !block
    	  @config[meth] = args[0]
      else
        b = self.class.new(block)
        @config[meth] = b.config
      end
    end

  end

end