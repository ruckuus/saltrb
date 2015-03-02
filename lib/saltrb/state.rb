require_relative 'common'

module Saltrb
  module State
    BASE="state"
    funcs = [ :clear_cache, :high, :highstate, :low, :pkg, :running, :show_highstate, :show_low_sls, :show_lowstate, :show_sls, :show_top, :single, :sls, :sls_id, :template, :template_str, :top ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
