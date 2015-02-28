require_relative 'common'

module Saltrb
  module Lvm
    BASE="lvm"
    funcs = [ :fullversion, :lvcreate, :lvdisplay, :lvremove, :pvcreate, :pvdisplay, :pvremove, :version, :vgcreate, :vgdisplay, :vgremove ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
