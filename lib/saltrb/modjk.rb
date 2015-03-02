require_relative 'common'

module Saltrb
  module Modjk
    BASE="modjk"
    funcs = [ :bulk_activate, :bulk_disable, :bulk_recover, :bulk_stop, :dump_config, :get_running, :lb_edit, :list_configured_members, :recover_all, :reset_stats, :version, :worker_activate, :worker_disable, :worker_edit, :worker_recover, :worker_status, :worker_stop, :workers ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
