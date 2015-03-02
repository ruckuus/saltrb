require_relative 'common'

module Saltrb
  module Lvm
    BASE="lvm"
    funcs = [ :fullversion, :lvcreate, :lvdisplay, :lvremove, :pvcreate, :pvdisplay, :pvremove, :version, :vgcreate, :vgdisplay, :vgremove ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
