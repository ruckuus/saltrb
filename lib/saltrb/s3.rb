require_relative 'common'

module Saltrb
  module S3
    BASE="s3"
    funcs = [ :del_export, :list_exports, :delete, :get, :head, :put ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
