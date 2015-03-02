require_relative 'common'

module Saltrb
  module Hosts
    BASE="hosts"
    funcs = [ :add_host, :get_alias, :get_ip, :has_pair, :list_hosts, :rm_host, :set_host ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
