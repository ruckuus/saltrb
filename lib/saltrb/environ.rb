require_relative 'common'

module Saltrb
  module Environ
    BASE="environ"
    funcs = [ :get, :has_value, :item, :items, :setenv, :setval ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
