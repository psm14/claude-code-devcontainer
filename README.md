# Claude Code DevContainer Feature

Devcontainer feature to add [Claude Code](https://www.anthropic.com/claude-code) to your environment.

## Usage

To use this feature in your devcontainer, add it to your `.devcontainer/devcontainer.json`:

```json
{
  "image": "mcr.microsoft.com/devcontainers/typescript-node",
  "features": {
    "ghcr.io/psm14/features/claude-code:latest": {}
  }
}
```

## Options

| Option    | Type    | Default    | Description                                     |
| --------- | ------- | ---------- | ----------------------------------------------- |
| `version` | string  | `"latest"` | Version of @anthropic-ai/claude-code to install |
| `global`  | boolean | `true`     | Whether to install the package globally         |

## Alternate Usage Examples

### Install specific version locally

```json
"features": {
  "ghcr.io/psm14/features/claude-code:latest": {
    "version": "1.0.0",
    "global": false
  }
}
```

## License

This devcontainer feature is provided under the MIT License.
