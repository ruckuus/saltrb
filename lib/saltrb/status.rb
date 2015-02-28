require_relative 'common'

module Saltrb
  module Status
    BASE="status"
    funcs = [ :all_status, :cpuinfo, :cpustats, :custom, :diskstats, :diskusage, :loadavg, :master, :meminfo, :netdev, :netstats, :nproc, :pid, :procs, :uptime, :version, :vmstats, :w ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
