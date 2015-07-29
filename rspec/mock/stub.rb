class Object
  def stub method_name
    Stub.new(self, method_name)
  end
end

class Stub
  def initialize object, method_name
    @method_name = method_name
    @object = object
  end

  def and_return value
    @object.class.send(:define_method, :say_hello) { value }
  end
end