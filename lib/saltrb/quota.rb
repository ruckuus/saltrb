require_relative 'common'

module Saltrb
  module Quota
    BASE="quota"
    funcs = [ :get_mode, :off, :on, :report, :set, :stats, :warn ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
