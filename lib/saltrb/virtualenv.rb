require_relative 'common'

module Saltrb
  module Virtualenv
    BASE="virtualenv"
    funcs = [ :create, :get_site_packages ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
