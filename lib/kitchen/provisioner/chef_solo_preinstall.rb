require 'kitchen'
require 'kitchen/provisioner/chef_solo'

require 'kitchen/provisioner/pre_install_helper'

module Kitchen
  module Provisioner
    # Just like the ChefSolo provisioner, but add a pre_install_command
    class ChefSoloPreinstall < ChefSolo
      default_config :pre_install_command, nil

      include Kitchen::Provisioner::PreInstallHelper
    end
  end
end
