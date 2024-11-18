### Fake webcam

Install `fwupd-tests`:
```sh
sudo apt install fwupd-tests
```
Notice the instructions at the end:
```
...
Setting up fwupd-tests (x.y.z) ...
To enable test suite, modify /etc/fwupd/daemon.conf
To enable test suite, enable fwupd-tests remote
```

Modify `/etc/fwupd/daemon.conf`:
```diff
diff --git a/etc/fwupd/daemon.conf b/etc/fwupd/daemon.conf
index 6ac8252..388a175 100644
--- a/etc/fwupd/daemon.conf
+++ b/etc/fwupd/daemon.conf
@@ -6,7 +6,7 @@ DisabledDevices=
 
 # Allow blocking specific plugins
 # Uses semicolons as delimiter
-DisabledPlugins=test;test_ble;invalid
+DisabledPlugins=invalid
 
 # Maximum archive size that can be loaded in Mb, with 0 for the default
 ArchiveSizeMax=0
```

Enable `fwupd-tests` remote:
```sh
fwupdmgr enable-remote fwupd-tests
```
