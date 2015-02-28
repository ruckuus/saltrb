require_relative 'common'

module Saltrb
  module Service
    BASE="service"
    funcs = [ :available, :disable, :disabled, :enable, :enabled, :get_all, :get_disabled, :get_enabled, :missing, :reload, :restart, :start, :status, :stop ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
