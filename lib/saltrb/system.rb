require_relative 'common'

module Saltrb
  module 65280
    BASE="system"
    funcs = [ :halt, :init, :poweroff, :reboot, :shutdown ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
