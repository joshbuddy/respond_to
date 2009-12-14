def RespondTo(method)
  
  RespondTo.create(method)
  
end

class RespondTo
  
  RespondTos = {}
  
  def self.create(method)
    RespondTos[method] ||= new(method)
  end
  
  attr_reader :method
  
  def initialize(method)
    @method = method
  end
  
  def ===(o)
    o.respond_to?(method)
  end
end