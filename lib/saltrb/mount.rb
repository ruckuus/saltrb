require_relative 'common'

module Saltrb
  module Mount
    BASE="mount"
    funcs = [ :active, :fstab, :is_fuse_exec, :is_mounted, :mount, :remount, :rm_fstab, :set_fstab, :swapoff, :swapon, :swaps, :umount ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
