require_relative 'common'

module Saltrb
  module Bridge
    BASE="bridge"
    funcs = [ :add, :addif, :delete, :delif, :find_interfaces, :interfaces, :list, :show, :stp ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
