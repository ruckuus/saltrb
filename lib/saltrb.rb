require "saltrb/version"
require "saltrb/cmd"
require "timeout"

module Saltrb
  SALT='/usr/bin/salt'
  DEFAULT_TIMEOUT=30

  # Command must be already constructed
  def self.exec_command(command, timeout = self::DEFAULT_TIMEOUT)
    rv = Timeout::timeout(timeout) {
      command = "#{self::SALT} #{command}"
      puts "COMMAND: #{command}"
      res = `#{command}`

      return false if res.empty? || res.empty?
      return res
    }
  end
end
