require_relative 'common'

module Saltrb
  module Img
    BASE="img"
    funcs = [ :bootstrap, :mnt_image, :mount_image, :umount_image ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
