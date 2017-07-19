# Flipper Documentation

The Flipper docs are built using [mdbook](https://github.com/azerupi/mdBook),
and are split into two books: `flipper` and `api`.

## Books

### Flipper

The `flipper` book introduces the platform at a high level and demonstrates
Flipper's capabilities. In it we explain our motivations as hardware
users for building each feature and how each contributes to the overall user
experience.

### API

The `api` book gives detailed usage information for the Flipper SDK. This
includes function definitions for standard modules, language bindings,
and command-line interface for the console.

## Building

To build the Flipper docs, you need to have
[mdBook](https://github.com/azerupi/mdBook#installation) installed.

To build the site's static files, navigate to the book you'd like to build
and run `mdbook build`. Then you can see the generated site by opening the
`book/index.html` file for that site.

```
cd flipper/
mdbook build
```

or

```
cd api/
mdbook build
```

If you'd like to make changes and see the site update immediately, you can
use `mdbook serve` and open `http://localhost:3000` in your browser.

```
cd flipper/
mdbook serve
```

or

```
cd api/
mdbook serve
```
