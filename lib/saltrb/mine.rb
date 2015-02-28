require_relative 'common'

module Saltrb
  module Mine
    BASE="mine"
    funcs = [ :delete, :flush, :get, :get_docker, :send, :update ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
