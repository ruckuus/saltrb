require_relative 'common'

module Saltrb
  module Dig
    BASE="dig"
    funcs = [ :A, :AAAA, :MX, :NS, :SPF, :TXT, :a, :aaaa, :check_ip, :mx, :ns, :spf ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
