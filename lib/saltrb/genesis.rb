require_relative 'common'

module Saltrb
  module Genesis
    BASE="genesis"
    funcs = [ :avail_platforms, :bootstrap, :pack, :unpack ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
