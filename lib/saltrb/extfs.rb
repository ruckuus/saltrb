require_relative 'common'

module Saltrb
  module Extfs
    BASE="extfs"
    funcs = [ :attributes, :blocks, :dump, :mkfs, :tune ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
