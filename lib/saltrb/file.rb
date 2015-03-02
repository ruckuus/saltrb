require_relative 'common'

module Saltrb
  module File
    BASE="file"
    funcs = [ :access, :append, :blockreplace, :check_file_meta, :check_hash, :check_managed, :check_perms, :chgrp, :chown, :comment, :contains, :contains_glob, :contains_regex, :contains_regex_multiline, :copy, :delete_backup, :directory_exists, :extract_hash, :file_exists, :find, :get_devmm, :get_diff, :get_gid, :get_group, :get_hash, :get_managed, :get_mode, :get_selinux_context, :get_sum, :get_uid, :get_user, :gid_to_group, :grep, :group_to_gid, :is_blkdev, :is_chrdev, :is_fifo, :is_link, :join, :lchown, :link, :list_backup, :list_backups, :lstat, :makedirs, :makedirs_perms, :manage_file, :mkdir, :mknod, :mknod_blkdev, :mknod_chrdev, :mknod_fifo, :open_files, :pardir, :patch, :path_exists_glob, :prepend, :psed, :readdir, :readlink, :remove, :remove_backup, :rename, :replace, :restore_backup, :restorecon, :rmdir, :search, :sed, :sed_contains, :seek_read, :seek_write, :set_mode, :set_selinux_context, :source_list, :stats, :statvfs, :symlink, :touch, :truncate, :uid_to_user, :uncomment, :user_to_uid, :write ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
