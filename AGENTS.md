# Proto

This repository owns the Protocol Buffer contracts and generated Go clients shared by Helios services.

## Commands

```bash
make generate
make check-generate
make test
make lint
```

## Rules

- Edit source contracts under `proto/`; do not hand-edit files under `gen/`.
- Commit generated Go code with every contract change.
- Prefer additive, backward-compatible changes.
- Never reuse a removed field number or silently change the meaning of an existing field.
- Keep `go_package` paths rooted at `github.com/heliannuuthus/proto/gen/proto`.
