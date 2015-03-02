require_relative 'common'

module Saltrb
  module Dnsmasq
    BASE="dnsmasq"
    funcs = [ :fullversion, :get_config, :set_config, :version ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
