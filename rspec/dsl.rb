require '../rspec/expector.rb'

class DSL
  def initialize
    @tests = {}
  end
  def parse(description, block)
    self.instance_eval(&block)
    Runner.new(description, @tests)
  end
  def it(description, &block)
    @tests[description] = block
  end
end