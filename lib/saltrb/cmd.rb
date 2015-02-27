module Saltrb
  module Cmd
    BASE="cmd"
    funcs = [ :exec_code, :has_exec, :retcode, :run, :run_all, :run_chroot, :run_stderr, :run_stdout, :script, :script_retcode, :tty, :which, :which_bin ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return self.runner("#{name}", target, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end

    def self.runner(method, target, command, timeout)
      _command = "'#{target}' #{self::BASE}.#{method} '#{command}'"
      rv = Saltrb.exec_command(_command, Saltrb::DEFAULT_TIMEOUT)
      return rv
    end
  end
end
