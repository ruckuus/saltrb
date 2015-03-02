require_relative 'common'

module Saltrb
  module Service
    BASE="service"
    funcs = [ :available, :disable, :disabled, :enable, :enabled, :get_all, :get_disabled, :get_enabled, :missing, :reload, :restart, :start, :status, :stop ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
