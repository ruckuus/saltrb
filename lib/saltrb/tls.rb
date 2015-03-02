require_relative 'common'

module Saltrb
  module Tls
    BASE="tls"
    funcs = [ :ca_exists, :cert_base_path, :create_ca, :create_ca_signed_cert, :create_csr, :create_pkcs12, :create_self_signed_cert, :get_ca, :maybe_fix_ssl_version, :set_ca_path ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
