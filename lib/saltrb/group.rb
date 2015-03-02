require_relative 'common'

module Saltrb
  module Group
    BASE="group"
    funcs = [ :add, :adduser, :chgid, :delete, :deluser, :getent, :info, :members ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
