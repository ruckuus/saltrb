require_relative 'common'

module Saltrb
  module Environ
    BASE="environ"
    funcs = [ :get, :has_value, :item, :items, :setenv, :setval ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
