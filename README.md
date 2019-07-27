# kitchen-provisioner-pre-install
This repo contains subclasses of test-kitchen provisioners that support a pre_install_command config option

This was a subclassing / monkey patch sort of way to add extra needed lifecycle hooks to test kitchen. https://github.com/test-kitchen/test-kitchen/pull/1411

Now that upstream test-kitchen supports lifecycle hooks, these subclasses are not useful.

Users should migrate to using test-kitchen `pre_converge` lifecycle hooks. And this repository can be deleted.
