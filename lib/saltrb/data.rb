require_relative 'common'

module Saltrb
  module Data
    BASE="data"
    funcs = [ :cas, :clear, :dump, :getval, :getvals, :load, :update ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
