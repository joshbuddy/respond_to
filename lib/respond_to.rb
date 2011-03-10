def RespondTo(method)
  RespondTo.create(method)
end

class RespondTo
  Matchers = {}
  
  def self.create(method)
    Matchers[method] ||= new(method)
  end

  attr_reader :method

  def initialize(method)
    @method = method
  end

  def ===(o)
    o.respond_to?(method)
  end
end

class Symbol
  def ~@
    RespondTo(self)
  end
end