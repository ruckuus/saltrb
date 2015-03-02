require_relative 'common'

module Saltrb
  module Config
    BASE="config"
    funcs = [ :backup_mode, :dot_vals, :get, :manage_mode, :merge, :option, :valid_fileproto ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
