# frozen_string_literal: true

# BadCode is an example for bad code in terms of InstanceVariableName Cop
class BadCode
  def initialize(message = '')
    @msg = message
  end

  def say
    puts "This is Bad #{message}"
  end

  private

  def message
    @msg
  end
end
