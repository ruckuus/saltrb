require_relative 'common'

module Saltrb
  module Data
    BASE="data"
    funcs = [ :cas, :clear, :dump, :getval, :getvals, :load, :update ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
