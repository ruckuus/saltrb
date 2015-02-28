require_relative 'common'

module Saltrb
  module Openstack_config
    BASE="openstack_config"
    funcs = [ :delete, :get, :set ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
