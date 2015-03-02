require_relative 'common'

module Saltrb
  module Acl
    BASE="acl"
    funcs = [ :delfacl, :getfacl, :modfacl, :version, :wipefacls ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->( target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
