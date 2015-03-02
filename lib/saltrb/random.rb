require_relative 'common'

module Saltrb
  module Random
    BASE="random"
    funcs = [ :get_str, :hash, :shadow_hash, :str_encode ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
