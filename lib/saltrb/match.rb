require_relative 'common'

module Saltrb
  module Match
    BASE="match"
    funcs = [ :compound, :data, :filter_by, :glob, :grain, :grain_pcre, :ipcidr, :list, :pcre, :pillar ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
