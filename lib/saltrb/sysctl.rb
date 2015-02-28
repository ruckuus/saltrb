require_relative 'common'

module Saltrb
  module Sysctl
    BASE="sysctl"
    funcs = [ :assign, :default_config, :get, :persist, :show ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
