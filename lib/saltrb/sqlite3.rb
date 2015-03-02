require_relative 'common'

module Saltrb
  module Sqlite3
    BASE="sqlite3"
    funcs = [ :fetch, :indexes, :indices, :modify, :sqlite_version, :tables, :version ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
