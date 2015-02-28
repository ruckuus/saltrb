require_relative 'common'

module Saltrb
  module Mount
    BASE="mount"
    funcs = [ :active, :fstab, :is_fuse_exec, :is_mounted, :mount, :remount, :rm_fstab, :set_fstab, :swapoff, :swapon, :swaps, :umount ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
