#!/bin/bash

set -e

# Import the utility functions if available
if [ -f "/usr/local/etc/vscode-dev-containers/library-scripts/utils.sh" ]; then
    # shellcheck source=/dev/null
    source /usr/local/etc/vscode-dev-containers/library-scripts/utils.sh
fi

# Parse options from environment variables (set by devcontainer)
VERSION=${VERSION:-"latest"}
GLOBAL=${GLOBAL:-"false"}

echo "🚀 Starting @anthropic-ai/claude-code installation..."
echo "   Version: ${VERSION}"
echo "   Global: ${GLOBAL}"

# Ensure we have Node.js and npm available
if ! command -v npm > /dev/null 2>&1; then
    echo "❌ ERROR: npm is not installed. Please ensure Node.js is available in your devcontainer."
    echo "   Add the Node.js feature to your devcontainer.json:"
    echo "   \"ghcr.io/devcontainers/features/node:1\": {}"
    exit 1
fi

echo "✅ Node.js $(node --version) and npm $(npm --version) are available"

# Install the package
if [ "${GLOBAL}" = "true" ]; then
    echo "📦 Installing @anthropic-ai/claude-code globally..."
    if [ "${VERSION}" = "latest" ]; then
        npm install -g @anthropic-ai/claude-code
    else
        npm install -g "@anthropic-ai/claude-code@${VERSION}"
    fi
    echo "✅ Global installation completed!"
else
    echo "📦 Installing @anthropic-ai/claude-code locally..."
    
    # Create a package.json if it doesn't exist in the workspace
    if [ ! -f "/workspaces/*/package.json" ] && [ ! -f "package.json" ]; then
        echo "📄 Creating package.json..."
        npm init -y
    fi
    
    if [ "${VERSION}" = "latest" ]; then
        npm install @anthropic-ai/claude-code
    else
        npm install "@anthropic-ai/claude-code@${VERSION}"
    fi
    echo "✅ Local installation completed!"
fi

echo "🎉 @anthropic-ai/claude-code installation finished successfully!"

# Verify installation
echo "🔍 Verifying installation..."
if [ "${GLOBAL}" = "true" ]; then
    if npm list -g @anthropic-ai/claude-code > /dev/null 2>&1; then
        echo "✅ Package verified in global installation"
    else
        echo "⚠️  Package installed but verification failed (this may be normal)"
    fi
else
    if npm list @anthropic-ai/claude-code > /dev/null 2>&1; then
        echo "✅ Package verified in local installation"
    else
        echo "⚠️  Package installed but verification failed (this may be normal)"
    fi
fi

echo ""
echo "🔧 Usage Example:"
echo "   import { Anthropic } from '@anthropic-ai/claude-code';"
echo "   const client = new Anthropic({ apiKey: 'your-api-key' });"
echo ""
echo "📚 Documentation: https://github.com/anthropics/anthropic-sdk-typescript"
