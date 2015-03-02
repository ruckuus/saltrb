require_relative 'common'

module Saltrb
  module Kmod
    BASE="kmod"
    funcs = [ :available, :check_available, :is_loaded, :load, :lsmod, :mod_list, :remove ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
