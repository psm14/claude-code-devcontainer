import { Anthropic } from "@anthropic-ai/claude-code";

// Example usage of the Claude Code package
const anthropic = new Anthropic({
  apiKey: process.env.ANTHROPIC_API_KEY,
});

async function testClaude() {
  try {
    const message = await anthropic.messages.create({
      model: "claude-3-sonnet-20240229",
      max_tokens: 1000,
      messages: [
        {
          role: "user",
          content: "Hello, Claude! This is a test from a devcontainer.",
        },
      ],
    });

    console.log(message.content);
  } catch (error) {
    console.error("Error:", error);
  }
}

// Only run if API key is provided
if (process.env.ANTHROPIC_API_KEY) {
  testClaude();
} else {
  console.log("Claude Code package is installed and ready to use!");
  console.log("Set ANTHROPIC_API_KEY environment variable to test API calls.");
}
