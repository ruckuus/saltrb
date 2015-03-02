require_relative 'common'

module Saltrb
  module Mysql
    BASE="mysql"
    funcs = [ :db_check, :db_create, :db_exists, :db_list, :db_optimize, :db_remove, :db_repair, :db_tables, :free_slave, :get_master_status, :get_slave_status, :grant_add, :grant_exists, :grant_revoke, :processlist, :query, :quote_identifier, :showglobal, :showvariables, :slave_lag, :status, :tokenize_grant, :user_chpass, :user_create, :user_exists, :user_grants, :user_info, :user_list, :user_remove, :version ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
