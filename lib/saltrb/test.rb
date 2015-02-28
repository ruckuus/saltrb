require_relative 'common'

module Saltrb
  module Test
    BASE="test"
    funcs = [ :arg, :arg_repr, :arg_type, :collatz, :conf_test, :cross_test, :echo, :exception, :fib, :get_opts, :kwarg, :not_loaded, :opts_pkg, :outputter, :ping, :provider, :providers, :rand_sleep, :rand_str, :retcode, :sleep, :stack, :tty, :version, :versions_information, :versions_report ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
