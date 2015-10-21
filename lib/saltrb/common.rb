require "saltrb/version"
require "timeout"

module Saltrb
  SALT='/usr/bin/salt'
  DEFAULT_TIMEOUT=30

  # Command must be already constructed
  def self.exec_command(command, timeout = self::DEFAULT_TIMEOUT)
    rv = Timeout::timeout(timeout) {
      command = "#{self::SALT} #{command}"
      res = `#{command}`

      return false if res.empty? || res.empty?
      return res
    }
  end

  def self.runner(method, target, base, command, timeout = self::DEFAULT_TIMEOUT)
    if command.nil?
      _command = "'#{target}' #{base}.#{method}"
    else
      _command = "'#{target}' #{base}.#{method} '#{command}'"
    end
    rv = Saltrb.exec_command(_command, timeout)
    return rv
  end
end
