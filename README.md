# Proto (deprecated)

This repository is retained temporarily for migration history. Hermes is now the source of truth for the `hermes.v1` language-neutral Protocol Buffer Schema.

Hermes 协议已经迁移到 [`heliantheon/hermes`](https://github.com/heliantheon/hermes/tree/main/proto/v1)。本仓库仅在消费者完成切换前保留历史，不再接受新的协议变更。

## New location

- Schema repository: [`heliantheon/hermes`](https://github.com/heliantheon/hermes)
- Schema directory: `proto/v1`
- Protobuf package: `hermes.v1`
- Version tags: `schema/*`

Consumers generate and commit their own language bindings from a fixed Hermes Schema tag. Generated Go code is no longer published as a shared module.

## Migration status

The existing `proto/` and `gen/` directories remain available for consumers pinned to historical revisions. After the Hermes and Aegis migration pull requests are merged, this repository will be archived.
