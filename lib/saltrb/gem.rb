require_relative 'common'

module Saltrb
  module Gem
    BASE="gem"
    funcs = [ :install, :list, :sources_add, :sources_list, :sources_remove, :uninstall, :update, :update_system ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
