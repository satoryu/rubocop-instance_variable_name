require 'spec_helper'

RSpec.describe RuboCop::Cop::Naming::TooShortInstanceVariable do
  let(:config) { RuboCop::Config.new }
  subject(:cop) { described_class.new(config) }

  context 'In default,' do
    specify 'instance variable name with length 2 is marked as offensive' do
      expect_offense <<~CODE
        @hg = 1
        ^^^^^^^ Instance variable `@hg` is too short.
      CODE
    end
    specify 'one charactor instance variable also is marked as offensive' do
      expect_offense <<~CODE
        @a = 1
        ^^^^^^ Instance variable `@a` is too short.
      CODE
    end
  end
end
