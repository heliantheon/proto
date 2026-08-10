# Proto

Protocol Buffer contracts shared by Helios services. Generated Go code is committed under `gen/` so consumers can use this repository as a normal Go module.

## Layout

- `proto/` contains the source `.proto` files and Buf configuration.
- `gen/` contains generated Go messages and gRPC stubs.

## Development

Install [Buf](https://buf.build/docs/installation), then run:

```bash
make generate
make check-generate
make test
make lint
```

When a contract changes, update its source and generated code in the same pull request. Prefer backward-compatible additions; do not reuse removed field numbers.
