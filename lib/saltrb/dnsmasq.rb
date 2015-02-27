require_relative 'common'

module Saltrb
  module Dnsmasq
    BASE="dnsmasq"
    funcs = [ :fullversion, :get_config, :set_config, :version ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
