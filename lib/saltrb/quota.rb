require_relative 'common'

module Saltrb
  module Quota
    BASE="quota"
    funcs = [ :get_mode, :off, :on, :report, :set, :stats, :warn ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
