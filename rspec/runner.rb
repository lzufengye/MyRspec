class Runner
  def initialize(description, tests)
    @description = description
    @tests = tests
    @success_count = 0
    @failure_count = 0
  end
  def run
    puts "#{@description}"
    @tests.each_pair do |name, block|
      print " - #{name}"
      begin
      result = self.instance_eval(&block)

      rescue

      end
      result ? @success_count += 1 : @failure_count += 1
      puts result ? " SUCCESS" : " FAILURE"
    end
    summary
  end
  def summary
    puts "\n#{@tests.keys.size} tests, #{@success_count} success, #{@failure_count} failure"
  end
end