require_relative 'common'

module Saltrb
  module Ssh
    BASE="ssh"
    funcs = [ :auth_keys, :check_key, :check_key_file, :check_known_host, :get_known_host, :hash_known_hosts, :host_keys, :recv_known_host, :rm_auth_key, :rm_known_host, :set_auth_key, :set_auth_key_from_file, :set_known_host, :user_keys ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
