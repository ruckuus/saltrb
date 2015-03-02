require_relative 'common'

module Saltrb
  module Rvm
    BASE="rvm"
    funcs = [ :do, :gemset_copy, :gemset_create, :gemset_delete, :gemset_empty, :gemset_list, :gemset_list_all, :get, :install, :install_ruby, :is_installed, :list, :reinstall_ruby, :rubygems, :set_default, :wrapper ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
