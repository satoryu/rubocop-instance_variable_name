require 'rubocop/cop/cop'

module RuboCop
  module Cop
    module Naming
      class TooShortInstanceVariable < ::RuboCop::Cop::Cop
        MSG = 'Instance variable `%<ivar_name>s` is too short.'.freeze
        DEFAULT_ACCEPTABLE_LENGTH = 2.freeze

        def on_ivasgn(node)
          ivar_name, _ = *node
          var_name = ivar_name[/^@(\w+)/, 1]
          add_offense(node, message: format(MSG, ivar_name: ivar_name)) if var_name.length <= acceptable_length
        end

        private
          def acceptable_length
            cop_config['AcceptableLength'] || DEFAULT_ACCEPTABLE_LENGTH
          end
      end
    end
  end
end