require_relative 'common'

module Saltrb
  module Buildout
    BASE="buildout"
    funcs = [ :bootstrap, :buildout, :run_buildout, :upgrade_bootstrap ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
