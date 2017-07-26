# What is Flipper?

Flipper is an embedded development platform that aims to make it simple to
build powerful hardware electronics projects quickly.
Flipper introduces a new perspective to hardware projects by shifting the
focus of the developer away from the limitations of embedded systems and onto
the goals of the project itself.
It does this by providing a software library that allows programs on a host
machine to execute functions on Flipper remotely.
A host machine can be a desktop computer, a smartphone, or even a server in
the cloud.
This means that you can write Flipper applications for any platform - and
using any programming language.

## Hardware Overview

Flipper's hardware design helps enable its first-class support for remote
applications, and provides several extra capabilities that further empower
hardware developers.

![Flipper top](assets/flipper-traced.png)

Flipper is equipped with two processors.
The larger and more powerful of the two is responsible for executing user
programs and is connected to the board pinout.
The smaller processor acts as a sidekick, interacting with host machines to
provide live interactivity without bogging down the main processor.
Another unique feature that this setup enables is that each processor can
upgrade the firmware of the other.
This allows us to roll out operating-system level improvements without any
need for users to set up special firmware-flashing circuitry.

Flipper has a unique form factor featuring board-flush female pin headers.
This shape, combined with the included right-angle headers, gives Flipper
two possible configurations: standalone and breadboard-mounted.
The standalone configuration is the default, and is great for projects with
simple circuitry, such as connecting directly to one or two sensors.
This also allows projects to stay physically small and lightweight.
Alternatively, the right-angle headers can be used to mount Flipper to a
breadboard, enabling greater flexibility for projects that require more
advanced circuits.

The board also has an expansion bus that exposes all of Flipper's primary
pinouts.
This means that the hardware capabilities of the platform can continue
improving as new expansion boards are created.
Additionally, some projects that are prototyped using a breadboard can be
polished and finalized by creating a printed circuit board (PCB) that
connects to the expansion bus.

## The Flipper Developer Experience

Flipper's feature set gives us a lot of opportunities to make life easier for
embedded developers.

