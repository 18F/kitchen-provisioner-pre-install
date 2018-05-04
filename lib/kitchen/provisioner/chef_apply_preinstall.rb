require 'kitchen'
require 'kitchen/provisioner/chef_apply'

require 'kitchen/provisioner/pre_install_helper'

module Kitchen
  module Provisioner
    # Just like the ChefApply provisioner, but add a pre_install_command
    class ChefApplyPreinstall < ChefApply
      default_config :pre_install_command, nil

      include Kitchen::Provisioner::PreInstallHelper
    end
  end
end
