require_relative 'common'

module Saltrb
  module Monit
    BASE="monit"
    funcs = [ :monitor, :restart, :start, :stop, :summary, :unmonitor ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
