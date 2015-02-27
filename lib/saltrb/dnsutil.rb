require_relative 'common'

module Saltrb
  module Dnsutil
    BASE="dnsutil"
    funcs = [ :A, :MX, :NS, :SPF, :check_ip, :hosts_append, :hosts_remove, :parse_hosts, :parse_zone ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
