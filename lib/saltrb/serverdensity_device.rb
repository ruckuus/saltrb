require_relative 'common'

module Saltrb
  module Serverdensity_device
    BASE="serverdensity_device"
    funcs = [ :create, :delete, :get_sd_auth, :install_agent, :ls, :update ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
