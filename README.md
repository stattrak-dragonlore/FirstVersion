FirstVersion
============

Save the app version string to keychain on app first run.

So you can know which version the user began to use your app, even if they uninstall your app then reinstall it.


Use Case
-------------

see <http://stackoverflow.com/questions/1575965/transition-an-existing-paid-for-app-to-free-version-with-in-app-purchase?lq=1>


How to Use
--------------

Just drag the `FirstVersion.h` and `FirstVersion.m` files into your project.

And add the following library dependency:

* FXKeychain(<https://github.com/nicklockwood/FXKeychain>)


Usage
--------

To get the first version string, you can call:

```objective-c
[FirstVersion getFirstVersion];
```
