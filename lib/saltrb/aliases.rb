require_relative 'common'

module Saltrb
  module Aliases
    BASE="aliases"
    funcs = [ :get_target , :has_target, :list_aliases, :rm_alias, :set_target ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
