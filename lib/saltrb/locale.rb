require_relative 'common'

module Saltrb
  module Locale
    BASE="locale"
    funcs = [ :avail, :gen_locale, :get_locale, :list_avail, :set_locale ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
