require_relative 'common'

module Saltrb
  module Nfs3
    BASE="nfs3"
    funcs = [ :del_export, :list_exports ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
