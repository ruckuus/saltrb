require_relative 'common'

module Saltrb
  module Lowpkg
    BASE="lowpkg"
    funcs = [ :file_dict, :file_list, :list_pkgs, :verify ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
