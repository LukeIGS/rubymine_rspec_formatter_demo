require 'rspec'

class OofFormatter
  RSpec::Core::Formatters.register self, :example_failed

  def example_failed
    raise 'oof'
  end

  def initialize(_output)
  end
end

RSpec.configure do |config|
  config.add_formatter(OofFormatter)
end

