# The Flipper Console

The Flipper Console is a tool we've put together to help you along every step
of the way to developing Flipper projects. It acts as a package manager, build
tool, hardware manager, and control interface for Flipper. We'll talk about
each of these roles in turn to give you an incremental view of the console's
usefulness.

## Managing Flipper Packages

Every Flipper project is called a package, and every package is either a
module or an application. A Flipper module is essentially a software library:
a collection of related functions that can be loaded onto the device. A
Flipper application is simply a module with a `main()` method, which runs
natively on the device.
