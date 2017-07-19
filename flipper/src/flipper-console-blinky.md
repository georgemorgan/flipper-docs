# The Flipper Console

The Flipper Console is a tool we've put together to help you along every step
of the way to developing Flipper projects. It acts as a package manager, build
tool, hardware manager, and control interface for Flipper. In this section,
we'll cover how to use the console to create and run a new project.

Note: These examples assume a unix-like command line, but Windows users should
be able to follow along. All of the `flipper` commands will be the same, but
there may be some os-specific command differences (e.g. `ls` vs `dir`).

## Creating a new project

We'll start by creating a blinky app for Flipper. Blinky is like the
"Hello, world!" of hardware projects, and just blinks Flipper's LED.
To create a new Flipper project using the console, use `flipper new`.

```
$ flipper new blinky --app
```

This will create a project folder, `./blinky`, with some starter code for a
Flipper app. You can also use `flipper init --app` to create an app in the
current directory. Let's look at what's in the new project.

```
$ cd blinky
$ ls
src/
Flipper.toml
```
