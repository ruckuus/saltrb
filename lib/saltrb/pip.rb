require_relative 'common'

module Saltrb
  module Pip
    BASE="pip"
    funcs = [ :freeze, :install, :list, :uninstall, :version ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
