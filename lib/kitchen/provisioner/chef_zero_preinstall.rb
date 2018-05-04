require 'kitchen'
require 'kitchen/provisioner/chef_zero'

require 'kitchen/provisioner/pre_install_helper'

module Kitchen
  module Provisioner
    # Just like the ChefZero provisioner, but add a pre_install_command
    class ChefZeroPreinstall < ChefZero
      default_config :pre_install_command, nil

      include Kitchen::Provisioner::PreInstallHelper
    end
  end
end
