require_relative 'common'

module Saltrb
  module Archive
    BASE="archive"
    funcs = [ :gunzip, :gzip, :rar, :tar, :unrar, :unzip, :zip ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
