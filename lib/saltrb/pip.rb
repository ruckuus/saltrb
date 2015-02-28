require_relative 'common'

module Saltrb
  module Pip
    BASE="pip"
    funcs = [ :freeze, :install, :list, :uninstall, :version ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
