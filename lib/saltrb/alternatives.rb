require_relative 'common'

module Saltrb
  module Alternatives
    BASE="alternatives"
    funcs = [ :auto, :check_installed, :display, :install, :remove, :set, :show_current ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
