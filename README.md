# Claude Code DevContainer Feature

This devcontainer feature adds the `@anthropic-ai/claude-code` package to your development environment, enabling integration with Anthropic's Claude AI models.

## Usage

To use this feature in your devcontainer, add it to your `.devcontainer/devcontainer.json`:

```json
{
  "image": "mcr.microsoft.com/devcontainers/typescript-node",
  "features": {
    "ghcr.io/psm14/claude-code-devcontainer/claude-code:latest": {}
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
  "ghcr.io/psm14/claude-code-devcontainer/claude-code:latest": {
    "version": "1.0.0",
    "global": false
  }
}
```

## About @anthropic-ai/claude-code

For more information about claude-code, visit the [official website](https://www.anthropic.com/claude-code).

## License

This devcontainer feature is provided under the MIT License.
