require_relative 'common'

module Saltrb
  module Rbenv
    BASE="rbenv"
    funcs = [ :default, :do, :do_with_ruby, :install, :install_ruby, :is_installed, :list, :rehash, :uninstall_ruby, :update, :versions ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
