# homebrew-tap

Homebrew tap for [@gfazioli](https://github.com/gfazioli)'s projects.

## Usage

Tap this repository once:

```bash
brew tap gfazioli/tap
```

Then install any of the packages listed below.

## Available packages

| Package | Kind | Description | Repository |
|---------|------|-------------|------------|
| `octoscope` | cask | Terminal dashboard for your GitHub account | [gfazioli/octoscope](https://github.com/gfazioli/octoscope) |

### octoscope became a cask in v0.34.0

The install command is unchanged, and it now serves **Linux** Homebrew as
well as macOS. Two things follow, both one-time.

If you installed octoscope from this tap before v0.34.0, `brew update` will
say *"Some installed kegs have no formulae"* and name it — that is the
formula being gone, not anything broken. The installed binary keeps working;
Homebrew simply has no recipe for it any more. To move across:

```bash
brew uninstall octoscope
brew install --cask gfazioli/tap/octoscope
```

A cask cannot upgrade a formula, and cannot even declare a conflict with
one — Homebrew [removed that](https://github.com/Homebrew/brew/pull/20499)
after it had long been a no-op — which is why this is a manual step rather
than something `brew upgrade` can do for you.

## Install directly

You can also install without explicitly tapping first:

```bash
brew install gfazioli/tap/octoscope
```

## About this repository

Everything here is generated automatically by
[goreleaser](https://goreleaser.com) each time the upstream project cuts a
tagged release. The source of truth is the project repo, not this tap.

## License

The tap configuration itself is MIT-licensed. Individual packages
inherit the licence of their upstream project.
