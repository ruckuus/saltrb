require_relative 'common'

module Saltrb
  module Alternatives
    BASE="alternatives"
    funcs = [ :auto, :check_installed, :display, :install, :remove, :set, :show_current ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
