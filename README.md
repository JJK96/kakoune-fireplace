# A fireplace in kakoune

Based on [this fireplace](https://medium.com/sweetmeat/python-curses-based-ascii-art-fire-animation-259e9e007767)

Inspired by [Emacs fireplace](https://github.com/johanvts/emacs-fireplace)

![Screenshot](https://raw.githubusercontent.com/JJK96/kakoune-fireplace/master/screenshot.png)

## Installation

### With [plug.kak](https://github.com/andreyorst/plug.kak) (recommended)

Add the following to your `kakrc`

```
plug "jjk96/kakoune-fireplace"
```

Then reload restart Kakoune and run `:plug-install`

### Manual

- Source `fireplace.kak`
- Edit `fireplace.kak` so that the correct location of `fireplace.py` is used.

## Usage

Run `:fireplace`

Scroll to the bottom of the file (<kbd>gj</kbd>)

You are suggested to disable line wrapping, line numbers and scrolloff for the best results.
