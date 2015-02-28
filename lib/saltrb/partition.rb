require_relative 'common'

module Saltrb
  module Partition
    BASE="partition"
    funcs = [ :align_check, :check, :cp, :exists, :get_block_device, :get_id, :list, :mkfs, :mklabel, :mkpart, :mkpartfs, :name, :part_list, :probe, :rescue, :resize, :rm, :set, :set_id, :system_types, :toggle ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end
