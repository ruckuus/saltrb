require_relative 'common'

module Saltrb
  module Seed
    BASE="seed"
    funcs = [ :apply, :mkconfig ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
