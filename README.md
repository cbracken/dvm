dvm: Dart Version Manager
=========================

A minimal tool for managing Dart SDK versions.

## Installation

In your home directory, run:
```
git clone https://github.com/cbracken/dvm.git .dvm
```

Add the following to your `.bashrc` or `.zshrc`:
```
if [[ -f ~/.dvm/scripts/dvm ]]; then
  . ~/.dvm/scripts/dvm
fi
```

## Usage

Commands:

   * `list`: list installed Dart versions
   * `use`: select a Dart version to use
   * `install`: install a Dart version

## Uninstalling

To remove dvm and all installed Dart versions:

```
rm -rf ~/.dvm
```

## Credits

Inspired by [gvm](https://github.com/moovweb/gvm).
