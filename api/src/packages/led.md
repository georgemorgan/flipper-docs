# Led

The `Led` package controls Flipper's built-in RGB led.

> **Functions**:
>
> - [rgb](#rbg)

---

## Functions

### rgb

Sets the color of Flipper's built-in RGB led.

```c
void rgb(uint8_t red, uint8_t green, uint8_t blue);
```

> **Parameters**:
> - `red` The intensity of red in the LED color.
> - `green` The intensity of green in the LED color.
> - `blue` The intensity of blue in the LED color.
>
> **Note:** All parameters to `rgb` must be within the range **0** to **255**.
