module Configus
  class Config
    def initialize(config)
      config.each do |k, value|
        define_singleton_method(k) { value }
      end
    end
  end
end