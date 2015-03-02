require_relative 'common'

module Saltrb
  module User
    BASE="user"
    funcs = [ :add, :chfullname, :chgid, :chgroups, :chhome, :chhomephone, :chroomnumber, :chshell, :chuid, :chworkphone, :delete, :getent, :info, :list_groups, :list_users ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
