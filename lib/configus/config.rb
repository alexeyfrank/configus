module Configus
  class Config

    def initialize(config)
      config.each do |k, value|
        define_singleton_method(k) do 
          if value.instance_of? Hash
            self.class.new(value)
          else
            value
          end
        end
      end
    end

    def [](key)
    	if !defined? key
    		raise "key not found!"
      else
        self.send key  
    	end
    end
  end
end