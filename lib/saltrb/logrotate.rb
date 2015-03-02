require_relative 'common'

module Saltrb
  module Logrotate
    BASE="logrotate"
    funcs = [ :set, :show_conf ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
