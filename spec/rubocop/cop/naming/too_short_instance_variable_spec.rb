require 'spec_helper'

RSpec.describe RuboCop::Cop::Naming::TooShortInstanceVariable do
  subject(:cop) { described_class.new }
  it '' do
    expect_offense <<~CODE
      @hg = 1
      ^^^^^^^ Instance variable `@hg` is too short.
    CODE
  end
end
