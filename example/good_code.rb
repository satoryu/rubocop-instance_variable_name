# frozen_string_literal: true

# GoodCode is an example for good code in terms of InstanceVariableName Cop
class GoodCode
  attr_reader :message

  def initialize(message = '')
    @message = message
  end

  def say
    puts "This is Good #{message}"
  end
end
