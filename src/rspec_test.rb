require '../rspec/rspec.rb'
require '../rspec/mock/stub.rb'
require '../src/prepare_test'

describe "some test" do
  it "equation should be true" do
    5 == 5
  end

  it "true should be true" do
    true.should == true
  end

  it "can compare two expression" do
    a = 5
    b = 4+1
    a.should != b
  end

  it "can use expect to" do
    a = 6
    b = 7
    c = 2
    d = 11
    expect(a+b).to {equal?(c+d)}
  end

  it "can use expect not to" do
    a = 6
    b = 7
    c = 2
    d = 12
    expect(a+b).not_to {equal?(c+d)}
  end

  it "can use stub" do
    for_stub = ForTestStub.new
    before_stub = for_stub.say_hello
    for_stub.stub(:say_hello).and_return('from stub')
    for_stub.say_hello.should == 'from stub'
  end
end

