require_relative 'common'

module Saltrb
  module Pagerduty
    BASE="pagerduty"
    funcs = [ :create_event, :list_incidents, :list_services ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
