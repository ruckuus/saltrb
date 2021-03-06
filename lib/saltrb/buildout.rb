require_relative 'common'

module Saltrb
  module Buildout
    BASE="buildout"
    funcs = [ :bootstrap, :buildout, :run_buildout, :upgrade_bootstrap ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
