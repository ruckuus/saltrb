require_relative 'common'

module Saltrb
  module Ini
    BASE="ini"
    funcs = [ :get_option, :get_section, :remove_option, :remove_section, :set_option ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
