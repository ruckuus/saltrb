require_relative 'common'

module Saltrb
  module Archive
    BASE="archive"
    funcs = [ :gunzip, :gzip, :rar, :tar, :unrar, :unzip, :zip ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
