# Claude Code DevContainer Feature

This devcontainer feature adds the `@anthropic-ai/claude-code` package to your development environment, enabling integration with Anthropic's Claude AI models.

## Usage

To use this feature in your devcontainer, add it to your `.devcontainer/devcontainer.json`:

```json
{
  "image": "mcr.microsoft.com/devcontainers/typescript-node",
  "features": {
    "ghcr.io/your-username/claude-code-devcontainer/claude-code:latest": {
      "version": "latest",
      "global": false
    }
  }
}
```

## Options

| Option    | Type    | Default    | Description                                     |
| --------- | ------- | ---------- | ----------------------------------------------- |
| `version` | string  | `"latest"` | Version of @anthropic-ai/claude-code to install |
| `global`  | boolean | `true`     | Whether to install the package globally         |

## Examples

### Install latest version globally (default)

```json
"features": {
  "ghcr.io/your-username/claude-code-devcontainer/claude-code:latest": {}
}
```

### Install specific version locally

```json
"features": {
  "ghcr.io/your-username/claude-code-devcontainer/claude-code:latest": {
    "version": "1.0.0",
    "global": false
  }
}
```

## Requirements

- Node.js and npm must be available in the container
- This feature should be installed after Node.js features

## About @anthropic-ai/claude-code

For more information about claude-code, visit the [official website](https://www.anthropic.com/claude-code).

## License

This devcontainer feature is provided under the MIT License.
