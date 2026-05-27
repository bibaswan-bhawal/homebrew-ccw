# homebrew-ccw

Homebrew tap for [ccw](https://github.com/bibaswan-bhawal/ccw) — a CLI for managing git worktrees with persistent Claude Code sessions.

## Install

```bash
brew install bibaswan-bhawal/ccw/ccw
```

Or, equivalently:

```bash
brew tap bibaswan-bhawal/ccw
brew install ccw
```

## Update

```bash
brew upgrade ccw
```

> `ccw update` will detect brew installs and route you back here.

## Verifying the install

Each ccw release publishes a `SHA256SUMS` and a [minisign](https://jedisct1.github.io/minisign/) signature. Brew already verifies the SHA-256 from this formula, but if you want to verify the signature manually:

```bash
minisign -Vm SHA256SUMS \
  -P RWTX1Db0eaMFBoWsAN0cI0XodrqfXrJeqPsHBqLfNB6UaSXUwGE74NhH
```

Releases are also signed with [Sigstore](https://www.sigstore.dev) build provenance — `gh attestation verify` against the upstream repo works for an independent third-party check.
