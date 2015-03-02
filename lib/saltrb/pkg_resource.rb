require_relative 'common'

module Saltrb
  module Pkg_resource 
    BASE="pkg_resource"
    funcs = [ :add_pkg, :check_extra_requirements, :pack_sources, :parse_targets, :sort_pkglist, :stringify, :version, :version_clean,] 

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
