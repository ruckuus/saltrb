require_relative 'common'

module Saltrb
  module Ret
    BASE="ret"
    funcs = [ :get_fun, :get_jid, :get_jids, :get_minions ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
