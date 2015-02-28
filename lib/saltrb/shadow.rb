require_relative 'common'

module Saltrb
  module Shadow
    BASE="shadow"
    funcs = [ :default_hash, :del_password, :gen_password, :info, :set_date, :set_expire, :set_inactdays, :set_maxdays, :set_mindays, :set_password, :set_warndays ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
