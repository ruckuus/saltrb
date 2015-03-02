require_relative 'common'

module Saltrb
  module Partition
    BASE="partition"
    funcs = [ :align_check, :check, :cp, :exists, :get_block_device, :get_id, :list, :mkfs, :mklabel, :mkpart, :mkpartfs, :name, :part_list, :probe, :rescue, :resize, :rm, :set, :set_id, :system_types, :toggle ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
