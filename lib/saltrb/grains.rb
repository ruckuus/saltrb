require_relative 'common'

module Saltrb
  module Grains
    BASE="grains"
    funcs = [ :append, :delval, :filter_by, :get, :get_or_set_hash, :has_value, :item, :items, :ls, :remove, :setval, :setvals ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
