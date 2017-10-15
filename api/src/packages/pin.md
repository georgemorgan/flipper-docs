# Pin

The ARM processor on Flipper has several small controllers inside it that
each perform a specific task. These controllers are called "peripherals",
and only one peripheral may have control of a pin at a time.
This package provides functions for assigning peripherals to pins.

> **Functions**:
> 
> - [mode](#mode)
> - [defaults](#defaults)
> 
> **Constants**:
> 
> -  [PIN](#pin)
> -  [PERIPHERAL](#peripheral)
>
> **Errors**:
>
> - [E_PIN_TYPE](#E_PIN_TYPE)
> - [E_PIN_MODE](#E_PIN_MODE)

---

## Functions

### mode

Assigns the peripheral which has physical access to a given pin.
If the given pin and peripheral are not physically connected, then an
error will be thrown.


```c
void mode(PIN pin, PERIPHERAL peripheral);
```

> **Parameters**:
> - `pin` The pin being assigned.
> - `peripheral` The peripheral which will now have access to the pin.

> **Errors**:
> - `E_PIN_TYPE` If the given peripheral can't be used on the given pin.

### defaults

Assigns each pin back to the default mode given at startup.

```c
void defaults();
```

---

## Constants

### PIN

Lists each pin on Flipper as it's printed on the board.

> **Note**: Most pins can be used for more than just their labeled purpose.
> The pin labels just correspond to common uses for those pins.
> For example, almost any pin can be used by the `DIGITAL` peripheral.

```c
typedef enum {

  // Analog pins
  A1, A2, A3, A4, A5, A6, A7, A8,

  // Special pins
  SDA, SCL, SS, SCK, MISO, MOSI, TX, RX, ADVREF, DM, DP,

  // Digital pins
  IO1, IO2, IO3, IO4, IO5, IO6, IO7, IO8, IO9,
  IO10, IO11, IO12, IO13, IO14, IO15, IO16

} PIN;
```

### PERIPHERAL

Lists each peripheral that can be assigned to a pin.

```c
typedef enum {

  ANALOG, DIGITAL, I2C, PWM, SPI, UART, USART, USB

} PERIPHERAL;
```

### DIRECTION

Some peripherals (such as [analog](./packages/analog.html) and
[digital](./packages/digital.html)) require pins to be configured for `INPUT`
or `OUTPUT`.

```c
typedef enum {

  INPUT, OUTPUT

} DIRECTION;
```

---

## Errors

### E_PIN_TYPE

Each peripheral can only be used on certain pins. If a funtion tries to use
a peripheral on a pin it does not belong to, this error is thrown.

### E_PIN_MODE

Some peripherals require their pins to be configured in a certain mode
(e.g. `INPUT` or `OUTPUT`). If a pin is not set in the correct mode for
a function, this error is thrown.

### E_PIN_ASSIGNMENT

Each pin may only have one peripheral assigned to it at a time. If a
peripheral tries to use a pin it is not currently assigned to, this error is
thrown.
