require_relative 'common'

module Saltrb
  module Hg
    BASE="hg"
    funcs = [ :archive, :clone, :describe, :pull, :revision, :update ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
