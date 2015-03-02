require_relative 'common'

module Saltrb
  module Sys
    BASE="sys"
    funcs = [ :argspec, :doc, :list_functions, :list_modules, :list_returner_functions, :list_returners, :list_runner_functions, :list_runners, :list_state_functions, :list_state_modules, :reload_modules, :returner_doc, :runner_doc, :state_doc ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
