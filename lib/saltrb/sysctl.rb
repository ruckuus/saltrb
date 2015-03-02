require_relative 'common'

module Saltrb
  module Sysctl
    BASE="sysctl"
    funcs = [ :assign, :default_config, :get, :persist, :show ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
