require_relative 'common'

module Saltrb
  module Ip
    BASE="ip"
    funcs = [ :apply_network_settings, :build_bond, :build_interface, :build_network_settings, :build_routes, :down, :get_bond, :get_interface, :get_network_settings, :get_routes, :up ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
