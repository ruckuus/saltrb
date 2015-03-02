require_relative 'common'

module Saltrb
  module Timezone
    BASE="timezone"
    funcs = [ :get_hwclock, :get_offset, :get_zone, :get_zonecode, :set_hwclock, :set_zone, :zone_compare ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
