require_relative 'common'

module Saltrb
  module Incron
    BASE="incron"
    funcs = [ :list_tab, :ls, :raw_incron, :raw_system_incron, :rm, :rm_job, :set_job, :write_cron_file_verbose, :write_incron_file ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
