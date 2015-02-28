require_relative 'common'

module Saltrb
  module Rabbitmq
    BASE="rabbitmq"
    funcs = [ :add_user, :add_vhost, :change_password, :clear_password, :cluster_status, :delete_policy, :delete_user, :delete_vhost, :disable_plugin, :enable_plugin, :force_reset, :join_cluster, :list_permissions, :list_policies, :list_queues, :list_queues_vhost, :list_user_permissions, :list_users, :list_vhosts, :plugin_is_enabled, :policy_exists, :reset, :set_permissions, :set_policy, :set_user_tags, :start_app, :status, :stop_app, :user_exists, :vhost_exists ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
