# homebrew-halo

Homebrew tap for the [halo CLI](https://github.com/halo-compliance/cli) — the official Halo Compliance platform CLI.

## Install

```sh
brew install halo-compliance/halo/halo
```

The fully-qualified name taps and installs in one step. Upgrade later with `brew upgrade halo`.

### Newer Homebrew: trust the tap first

Recent Homebrew versions gate third-party taps behind an explicit trust step, so the one-liner above is blocked with an untrusted-tap prompt on a fresh machine. Trust the tap once, then install:

```sh
brew trust halo-compliance/halo
brew install halo-compliance/halo/halo
```
