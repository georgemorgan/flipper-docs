# Analog

The Analog package controls the input and output of analog pins. The analog
pins on Flipper are `A1`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, and `A8`. The
functions in this package only work on analog pins and will throw errors if
given any other pin names.

> **Functions**:
>
> - [direction](#direction)
> - [read](#read)
> - [write](#write)

---

## Functions

### direction

Sets the direction of a pin to `INPUT` or `OUTPUT`.

```c
void direction(PIN pin, DIRECTION direction);
```

> **parameters**:
> - `pin` The analog pin to set the direction of.
> - `direction` The direction (`INPUT` or `OUTPUT`) to set.

### read

Reads a voltage from the given analog pin.

```c
uint16_t read(PIN pin);
```

> **parameters**:
> - `pin` The analog pin to read from.

> **returns**:
> - `uint16_t` A 16-bit value corresponding to the voltage on the pin.

> **errors**:
> - `E_PIN_TYPE` If the pin is not an analog pin.
> - `E_PIN_MODE` If the pin is not in `INPUT` mode.
> - `E_PIN_ASSIGNMENT` If the pin is not assigned to the `ANALOG` peripheral.

### write

Writes a voltage to the given analog pin.

```c
void write(PIN pin, uint16_t value);
```

> **parameters**:
> - `pin` The analog pin to write to.
> - `value` A 16-bit value that corresponds to the voltage to set on the pin.

> **errors**:
> - `E_PIN_TYPE` If the pin is not an analog pin.
> - `E_PIN_MODE` If the pin is not in `OUTPUT` mode.
> - `E_PIN_ASSIGNMENT` If the pin is not assigned to the `ANALOG` peripheral.
