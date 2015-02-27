require_relative 'common'

module Saltrb
  module Daemontools
    BASE="daemontools"
    funcs = [ :available, :full_restart, :get_all, :missing, :reload, :restart, :start, :status, :stop, :term ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
