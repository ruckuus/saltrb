require_relative 'common'

module Saltrb
  module Etcd
    BASE="etcd"
    funcs = [ :get, :ls, :rm, :set, :tree ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
