require_relative 'common'

module Saltrb
  module Gem
    BASE="gem"
    funcs = [ :install, :list, :sources_add, :sources_list, :sources_remove, :uninstall, :update, :update_system ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
