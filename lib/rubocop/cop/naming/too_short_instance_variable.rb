require 'rubocop/cop/cop'

module RuboCop
  module Cop
    module Naming
      class TooShortInstanceVariable < ::RuboCop::Cop::Cop
        MSG = 'Instance variable `%<ivar_name>s` is too short.'.freeze

        def on_ivasgn(node)
          ivar_name, _ = *node
          add_offense(node, message: format(MSG, ivar_name: ivar_name)) if ivar_name.length <= 3
        end
      end
    end
  end
end