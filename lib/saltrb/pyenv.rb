require_relative 'common'

module Saltrb
  module Pyenv
    BASE="pyenv"
    funcs = [ :default, :do, :do_with_python, :install, :install_python, :is_installed, :list, :rehash, :uninstall_python, :update, :versions ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
