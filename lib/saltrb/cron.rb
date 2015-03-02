require_relative 'common'

module Saltrb
  module Cron
    BASE="cron"
    funcs = [ :list_tab, :ls, :raw_cron, :rm, :rm_env, :rm_job, :set_env, :set_job, :set_special, :write_cron_file, :write_cron_file_verbose ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
