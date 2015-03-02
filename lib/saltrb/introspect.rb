require_relative 'common'

module Saltrb
  module Introspect
    BASE="introspect"
    funcs = [ :enabled_service_owners, :running_service_owners, :service_highstate ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
