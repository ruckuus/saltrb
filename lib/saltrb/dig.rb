require_relative 'common'

module Saltrb
  module Dig
    BASE="dig"
    funcs = [ :A, :AAAA, :MX, :NS, :SPF, :TXT, :a, :aaaa, :check_ip, :mx, :ns, :spf ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
