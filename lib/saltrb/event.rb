require_relative 'common'

module Saltrb
  module Event
    BASE="event"
    funcs = [ :fire, :fire_master, :send ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
