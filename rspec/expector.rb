module Kernel
  def expect(block)
    Expector.new(block)
  end
end

class Expector
  def initialize object
    @self_object = object
  end
  def to(&block)

    if @self_object.instance_eval(&block)
      Exception.new
    end
  end

  def not_to(&block)
    !@self_object.instance_eval(&block)
  end
end