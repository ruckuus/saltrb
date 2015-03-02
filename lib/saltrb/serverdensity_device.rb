require_relative 'common'

module Saltrb
  module Serverdensity_device
    BASE="serverdensity_device"
    funcs = [ :create, :delete, :get_sd_auth, :install_agent, :ls, :update ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
