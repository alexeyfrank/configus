module Configus

  class Builder::Proxy

    def initialize(block)
      @config = {}
      instance_eval &block
    end


    def method_missing(meth, *args, &block)
    	@config[meth] = args
    end
  end

end