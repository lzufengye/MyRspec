require '../rspec/dsl.rb'
require '../rspec/runner.rb'

module Kernel
  def describe(description, &block)
    tests = DSL.new.parse(description, block)
    tests.run
  end
end

class Object
  def should
    self
  end
end