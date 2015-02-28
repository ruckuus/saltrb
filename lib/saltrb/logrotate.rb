require_relative 'common'

module Saltrb
  module Logrotate
    BASE="logrotate"
    funcs = [ :set, :show_conf ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
