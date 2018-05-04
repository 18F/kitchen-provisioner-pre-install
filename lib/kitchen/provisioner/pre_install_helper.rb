module Kitchen
  module Provisioner
    # This module provides the method run_pre_install_command and is intended
    # to help monkey patch provisioner classes.
    module PreInstallHelper
      # Helper to run the monkey patched pre_install_command from config.
      def run_pre_install_command(state)
        pre_cmd = config[:pre_install_command]

        return unless pre_cmd

        info("Running pre_install_command on #{instance.to_str}")
        instance.transport.connection(state) do |conn|
          conn.execute(pre_cmd)
        end
      end

      # Override #call to first run the pre_install_command.
      def call(state)
        run_pre_install_command(state)

        super
      end
    end
  end
end
