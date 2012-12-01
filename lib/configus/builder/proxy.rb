module Configus

  class Builder::Proxy

    def initialize(block)
      @config = {}
      instance_eval &block
      @config
    end


    def method_missing(meth, *args, &block)
      p meth, args
    	@config[meth] = args
    end

  end

end