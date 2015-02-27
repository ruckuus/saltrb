require_relative 'common'

module Saltrb
  module Cp
    BASE="cp"
    funcs = [ :cache_dir, :cache_file, :cache_files, :cache_local_file, :cache_master, :get_dir, :get_file, :get_file_str, :get_template, :get_url, :hash_file, :is_cached, :list_master, :list_master_dirs, :list_master_symlinks, :list_minion, :list_states, :push, :push_dir, :recv ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
