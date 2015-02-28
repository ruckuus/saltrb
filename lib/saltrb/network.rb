require_relative 'common'

module Saltrb
  module Network
    BASE="network"
    funcs = [ :active_tcp, :arp, :connect, :dig, :get_hostname, :hw_addr, :hwaddr, :in_subnet, :interface, :interface_ip, :interfaces, :ip_addrs, :ip_addrs6, :ipaddrs, :ipaddrs6, :is_loopback, :is_private, :mod_hostname, :netstat, :ping, :subnets, :traceroute ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
