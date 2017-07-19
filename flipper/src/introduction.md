## Introduction

Flipper is an embedded development platform specifically designed to provide
seamless abstraction between the application layer and common hardware
peripherals such as *GPIO*, *I2C*, *SPI*, *UART*, and more. **Flipper makes it
easy to control embedded hardware, from any programming language, on any
platform, in real-time.**

Flipper aims to simplify the bringup of projects that require high-level
interactation with hardware at by providing a multi-platform library and a
series of language bindings that can be used to control any of the device's
peripherals, straight out of the box. Any of the library functions, when
called, will have an immediate effect on the attached device's hardware. Get
started by turing on an LED with 2 lines of code in your favorite language
[here](./getting-started.html), or learn how to do it in a single command
using the console [here](./getting-started.html#console).

Continue reading to learn more about how everything works. Alternatively, you
can jump to the introductory section that most piques your interest using the
table below.

#### Getting started using:
- [iOS](./getting-started.html#iOS)
- [Android](./getting-started.html#Android)
- [Windows](./getting-started.html#Windows)
- [macOS](./getting-started.html#macOS)
- [Linux](./getting-started.html#Linux)

#### Working with:
- [Python](./getting-started.html#Linux)
- [Java](./getting-started.html#macOS)
- [Swift](./getting-started.html#Windows)
- [Objective-C](./getting-started.html#Android)
- [Rust](./getting-started.html#iOS)
- [C++](./getting-started.html#iOS)
- [C](./getting-started.html#iOS)
- [Haskell](./getting-started.html#Linux)

---

## Overview

Functionality of the device's peripherals are encapsulated in small libraries
of code that live on the device called modules. All devices come preinstalled
with the modules listed below. It's easy to create and distribute your own
modules, too, using our [package manager](./package-manager.html).

It is simple to create applications for the device, too. Applications are just
modules with a `main()` function that is called when they are loaded. You can
still interact with the public functions of an application, the same way you
can with the functions of a module.

### Osmium

Osmium, or Os for short, is Flipper's lightweight operating system. The
operating system exposes a basic POSIX compatability layer as well as a
filesystem, loader, and scheduler that enable the storage, instantiation of,
and execution of Flipper images, respectively.

#### Preinstalled Modules

|Module|Description|
|-|-|
| [**adc**](modules-adc.html)       | Read analog values from supported IO pins.                                     |
| [**button**](modules-button.html) | Get the pressed state of the pushbutton as a boolean.                          |
| [**cpu**](modules-cpu.html)       | Reset, power cycle, power off the primary ARM CPU.                             |
| [**dac**](modules-dac.html)       | Write analog values to supported IO pins.                                      |
| [**fs**](modules-fs.html)         | Create, rename, delete, upload/download files to/from the device.              |
| [**gpio**](modules-gpio.html)     | Configure GPIO pins, write values to outputs, read boolean values from inputs. |
| [**i2c**](modules-i2c.html)       | Manage I2C/TWI transfers using SDA and SCK.                                    |
| [**led**](modules-led.html)       | Write a red, green, and blue value to the onboard RGB LED.                     |
| [**pwm**](modules-pwm.html)       | Output specific PWM frequencies to supported IO pins.                          |
| [**rtc**](modules-rtc.html)       | Get the date and time from the Gregorian or Persian calendar.                  |
| [**spi**](modules-spi.html)       | Manage transfers to SPI devices using MOSI MISO SCK and SS.                    |
| [**swd**](modules-swd.html)       | Control the active debugging session; step, continue, break, etc.              |
| [**temp**](modules-temp.html)     | Get the ambient temperature in Farenheit or Celcius.                           |
| [**timer**](modules-timer.html)   | Register function callbacks after a certain duration of time.                  |
| [**usart**](modules-usart.html)   | Manage transfers to USART devices using TX and RX.                             |
| [**usb**](modules-usb.html)       | Act as a USB device such as a keyboard and mouse using D+ and D-.              |
| [**wdt**](modules-wdt.html)       | Configure, enable, pet, or disable the internal watchdog timer.                |

# Hardware

If you've worked with other development platforms before, such as Arduino, or
Raspberry Pi, you will find the peripherals on the device very familiar. In
its default configuration, the device exposes the following peripherals.

 - 16x General Purpose Input Output (IO1 - IO16)
 - 8x Analog Input **or** 4x Analog Input and 4x Analog Output (A1 - A8)
 - 1x I2C
 - 1x SPI with support for up to 3 slaves @ 96 MHz.
 - 1x USART up to 2 megabaud.
 - 1x USB (device)

In advanced configurations, the device can be configured to have up to the
following number of peripherals:

- 32x GPIO
- 3x I2C
- 3x USART
