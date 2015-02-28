require_relative 'common'

module Saltrb
  module Pyenv
    BASE="pyenv"
    funcs = [ :default, :do, :do_with_python, :install, :install_python, :is_installed, :list, :rehash, :uninstall_python, :update, :versions ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
