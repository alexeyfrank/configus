module Configus
  class Config

    def initialize(config)
      @config = config
      config.each do |k, value|
        define_singleton_method(k) { value }
      end
    end

    def [](key)
    	unless @config[key]
    		raise "key not found!"
    	end 

    	@config[key]
    end
  end
end