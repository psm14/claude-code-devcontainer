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

## Repository Structure

```
.
├── src/
│   └── claude-code/           # The devcontainer feature
│       ├── devcontainer-feature.json
│       └── install.sh
├── test/                      # Test configuration
│   ├── devcontainer.json
│   ├── example.ts
│   ├── package.json
│   └── tsconfig.json
├── .github/workflows/         # CI/CD workflows
├── README.md
├── LICENSE
└── metadata.json
```

## About @anthropic-ai/claude-code

The `@anthropic-ai/claude-code` package provides TypeScript/JavaScript SDK for integrating with Anthropic's Claude AI models. It enables developers to:

- Send messages to Claude models
- Handle streaming responses
- Manage conversations and context
- Integrate AI capabilities into applications

For more information, visit the [official documentation](https://github.com/anthropics/anthropic-sdk-typescript).

## Development

To test this feature locally:

1. Clone this repository
2. Use the test configuration in the `test/` directory
3. Open in VS Code with the Dev Containers extension
4. The feature will be automatically installed and tested

## Publishing

This feature can be published to GitHub Container Registry using the included GitHub Actions workflow. The workflow automatically:

- Tests the feature with each push/PR
- Publishes the feature on releases

## License

This devcontainer feature is provided under the MIT License.
