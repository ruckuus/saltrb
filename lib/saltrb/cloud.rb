require_relative 'common'

module Saltrb
  module Cloud
    BASE="cloud"
    funcs = [ :action, :create, :destroy, :full_query, :list_images, :list_locations, :list_sizes, :network_create, :network_list, :profile, :query, :select_query, :virtual_interface_create, :virtual_interface_list, :volume_attach, :volume_create, :volume_delete, :volume_detach, :volume_list ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
