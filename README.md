dvm: Dart Version Manager
=========================

A minimal tool for managing Dart SDK versions.

## Installing

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

   * `alias`: manage Dart version aliases
   * `help`: display usage
   * `implode`: delete dvm and all installed Dart versions
   * `install`: install a Dart version
   * `list`: list installed Dart versions
   * `listall`: list all available Dart versions (`--dev` for dev channel)
   * `use`: select a Dart version to use (`--default` to set as default)
   * `version`: Display the dvm version number

## Uninstalling

To remove dvm and all installed Dart versions:

```
dvm implode
```

## Credits

Inspired by [gvm](https://github.com/moovweb/gvm).
