require_relative 'common'

module Saltrb
  module Random
    BASE="random"
    funcs = [ :get_str, :hash, :shadow_hash, :str_encode ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
