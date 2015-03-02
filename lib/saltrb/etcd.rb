require_relative 'common'

module Saltrb
  module Etcd
    BASE="etcd"
    funcs = [ :get, :ls, :rm, :set, :tree ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
