# Homebrew Flight Engineer

Homebrew tap for [Flight Engineer](https://github.com/floriandejonckheere/flight-engineer),
a macOS desktop widget that monitors your GitHub Copilot AI credits.

## Installation

```sh
brew install --cask floriandejonckheere/flight-engineer/flight-engineer
```

Launch **Flight Engineer** from `/Applications`, sign in to GitHub from the menu
bar icon, and add the widget to your desktop via **Edit Widgets…**.

If Homebrew reports that the tap is not trusted, trust the cask first:

```sh
brew trust --cask floriandejonckheere/flight-engineer/flight-engineer
```

Flight Engineer is ad-hoc signed and not notarized. The cask removes the
quarantine attribute after installation so macOS allows it to run.

## Uninstallation

```sh
brew uninstall --cask flight-engineer
brew uninstall --zap --cask flight-engineer  # also removes usage history and session
```
