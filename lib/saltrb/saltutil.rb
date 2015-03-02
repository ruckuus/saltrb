require_relative 'common'

module Saltrb
  module Saltutil
    BASE="saltutil"
    funcs = [ :clear_cache, :cmd, :cmd_iter, :find_cached_job, :find_job, :is_running, :kill_job, :mmodule, :refresh_modules, :refresh_pillar, :regen_keys, :revoke_auth, :runner, :running, :signal_job, :sync_all, :sync_grains, :sync_modules, :sync_outputters, :sync_renderers, :sync_returners, :sync_states, :sync_utils, :term_job, :update, :wheel ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
