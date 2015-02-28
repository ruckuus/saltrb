require_relative 'common'

module Saltrb
  module Schedule
    BASE="schedule"
    funcs = [ :add, :build_schedule_item, :delete, :disable, :disable_job, :enable, :enable_job, :list, :modify, :purge, :reload, :run_job, :save ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
