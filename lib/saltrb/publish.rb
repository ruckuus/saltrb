require_relative 'common'

module Saltrb
  module Publish
    BASE="publish"
    funcs = [ :full_data, :publish, :runner ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
