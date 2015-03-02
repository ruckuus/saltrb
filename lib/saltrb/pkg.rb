require_relative 'common'

module Saltrb
  module Pkg 
    BASE="pkg"
    funcs = [ :available_version, :check_db, :clean_metadata, :del_repo, :expand_repo_def, :file_dict, :file_list, :get_locked_packages, :get_repo, :group_diff, :group_info, :group_install, :group_list, :hold, :install, :latest_version, :list_pkgs, :list_repo_pkgs, :list_repos, :list_upgrades, :mod_repo, :normalize_name, :owner, :purge, :refresh_db, :remove, :unhold, :upgrade, :upgrade_available, :verify, :version,] 

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
