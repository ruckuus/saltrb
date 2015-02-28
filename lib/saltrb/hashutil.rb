require_relative 'common'

module Saltrb
  module Hashutil
    BASE="hashutil"
    funcs = [ :base64_decodestring, :base64_encodestring, :hmac_signature, :md5_digest, :sha256_digest, :sha512_digest ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
