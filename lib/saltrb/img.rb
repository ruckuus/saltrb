require_relative 'common'

module Saltrb
  module Img
    BASE="img"
    funcs = [ :bootstrap, :mnt_image, :mount_image, :umount_image ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
