# homebrew-cast-predict

Homebrew tap for [cast-predict](https://github.com/ek33450505/cast-predict) — telemetry-driven dispatch prediction over your Claude Code execution record (`cast.db`). Predict a task's likely cost, suggested agents, and related past incidents before you run it.

## Install

```bash
brew tap ek33450505/cast-predict
brew install cast-predict
cast-predict "add a BATS test"
```

The formula symlinks `cast-predict` into `$(brew --prefix)/bin`, so it's on your PATH the moment install completes.

## Uninstall

```bash
brew uninstall cast-predict
brew untap ek33450505/cast-predict
```

## See also

- [cast-predict](https://github.com/ek33450505/cast-predict) — source repo
- [claude-agent-team](https://github.com/ek33450505/claude-agent-team) — full CAST framework
- [The full CAST ecosystem](https://github.com/ek33450505/claude-agent-team#the-cast-ecosystem)
