require_relative 'common'

module Saltrb
  module Selinux
    BASE="selinux"
    funcs = [ :getenforce, :getsebool, :list_sebool, :selinux_fs_path, :setenforce, :setsebool, :setsebools ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
