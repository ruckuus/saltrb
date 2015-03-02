require_relative 'common'

module Saltrb
  module Selinux
    BASE="selinux"
    funcs = [ :getenforce, :getsebool, :list_sebool, :selinux_fs_path, :setenforce, :setsebool, :setsebools ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
