require_relative 'common'

module Saltrb
  module Hashutil
    BASE="hashutil"
    funcs = [ :base64_decodestring, :base64_encodestring, :hmac_signature, :md5_digest, :sha256_digest, :sha512_digest ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
