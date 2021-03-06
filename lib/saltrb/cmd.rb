require_relative 'common'

module Saltrb
  module Cmd
    BASE="cmd"
    funcs = [ :exec_code, :has_exec, :retcode, :run, :run_all, :run_chroot, :run_stderr, :run_stdout, :script, :script_retcode, :tty, :which, :which_bin ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
