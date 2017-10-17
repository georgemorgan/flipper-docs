# Digital

The digital package controls the input and output of digital pins. Any pin on
Flipper may be used as a digital pin, but not all pins are assigned to the
`DIGITAL` peripheral by default. Make sure that any pin you use here has been
set to `DIGITAL` with [`pin.mode`](./packages/pin.html#mode).

> **Functions**:
>
> - [direction](#direction)
> - [read](#read)
> - [write](#write)
>
> **Constants**:
>
> - [STATE](#STATE)

---

## Functions

### direction

Sets the direction of the given digital pin.

```c
void direction(PIN pin, DIRECTION direction);
```

> **Parameters**:
> - `pin` The digital pin to set the direction of.
> - `direction` The direction (`INPUT` or `OUTPUT`) to set.

### read

Reads the state of the given pin (`LOW` or `HIGH`).

```c
STATE read(PIN pin);
```

> **Parameters**:
> - `pin` The digital pin to read.

> **Returns**:
>
> - `LOW` If the pin voltage is low (0v).
> - `HIGH` If the pin voltage is high (3.3v).

> **Errors**:
> - `E_PIN_MODE` If the pin isn't in `INPUT` mode.
> - `E_PIN_ASSIGNMENT` If the pin isn't assigned to the `DIGITAL` peripheral.

### write

Writes a `HIGH` or `LOW` voltage to the given pin.

```c
void write(PIN pin, STATE value);
```

> **Parameters**:
> - `pin` The digital pin to write to.
> - `value` The state to write to the pin (`LOW` or `HIGH`).

> **Errors**:
> - `E_PIN_MODE` If the pin isn't in `OUTPUT` mode.
> - `E_PIN_ASSIGNMENT` If the pin isn't assigned to the `DIGITAL` peripheral.

---

## Constants

### STATE

```c
typedef enum {

  LOW, HIGH

} STATE;
```
