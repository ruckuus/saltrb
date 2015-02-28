require_relative 'common'

module Saltrb
  module Pagerduty
    BASE="pagerduty"
    funcs = [ :create_event, :list_incidents, :list_services ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
