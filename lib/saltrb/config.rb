require_relative 'common'

module Saltrb
  module Config
    BASE="config"
    funcs = [ :backup_mode, :dot_vals, :get, :manage_mode, :merge, :option, :valid_fileproto ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
