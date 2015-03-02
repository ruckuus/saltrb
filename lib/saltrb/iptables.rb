require_relative 'common'

module Saltrb
  module Iptables
    BASE="iptables"
    funcs = [ :append, :build_rule, :check, :check_chain, :delete, :delete_chain, :flush, :get_policy, :get_rules, :get_saved_policy, :get_saved_rules, :insert, :new_chain, :save, :set_policy, :version ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
