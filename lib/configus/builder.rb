class Configus::Builder 
	def initialize(&block) 
		block.call(self)
	end

	def env(name, &block)
		block.call
	end


end