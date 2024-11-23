#!/usr/bin/env sh

# install.sh - Script to set up the Walnut knowledge base in the user's home directory

# Exit immediately if a command exits with a non-zero status
set -e

# Function to display error messages
error() {
  echo "Error: $1" >&2
  exit 1
}

# Check if required commands are available
for cmd in mkdir cp chmod curl tar; do
  if ! command -v "$cmd" >/dev/null 2>&1; then
    error "Required command '$cmd' is not installed. Please install it and try again."
  fi
done

# Define variables
WALNUT_REPO_URL="https://github.com/raffaelschneider/walnut/archive/refs/heads/main.tar.gz"
WALNUT_BASE_DIR="$HOME/Walnut"
WALNUT_BIN_DIR="$WALNUT_BASE_DIR/.bin"

# Inform the user about the setup directory
echo "Setting up your Walnut knowledge base at $WALNUT_BASE_DIR..."

# Create the base directory
mkdir -p "$WALNUT_BASE_DIR" || error "Failed to create directory $WALNUT_BASE_DIR"

# Download and extract the Walnut repository
echo "Downloading Walnut repository..."
TMP_DIR=$(mktemp -d) || error "Failed to create temporary directory"
curl -fsSL "$WALNUT_REPO_URL" -o "$TMP_DIR/walnut.tar.gz" || error "Failed to download Walnut repository"

echo "Extracting Walnut repository..."
tar -xzf "$TMP_DIR/walnut.tar.gz" -C "$TMP_DIR" || error "Failed to extract Walnut repository"

# Copy only the contents of the 'walnut' directory to WALNUT_BASE_DIR
echo "Copying Walnut files to $WALNUT_BASE_DIR..."
REPO_DIR="$TMP_DIR/walnut-main/walnut"  # Adjusted to point to the 'walnut' directory within the repository

if [ -d "$REPO_DIR" ]; then
  cp -R "$REPO_DIR/"* "$WALNUT_BASE_DIR/" || error "Failed to copy Walnut files"
else
  error "The 'walnut' directory was not found in the repository."
fi

# Ensure the .bin directory exists (optional, if you have scripts to set up)
if [ -d "$TMP_DIR/walnut-main/.bin" ]; then
  echo "Setting up Walnut scripts at $WALNUT_BIN_DIR..."
  mkdir -p "$WALNUT_BIN_DIR" || error "Failed to create directory $WALNUT_BIN_DIR"
  cp -R "$TMP_DIR/walnut-main/.bin/"* "$WALNUT_BIN_DIR/" || error "Failed to copy scripts to $WALNUT_BIN_DIR"
  
  # Make all scripts in .bin executable
  echo "Making scripts executable..."
  chmod +x "$WALNUT_BIN_DIR"/* || error "Failed to make scripts executable"

  # Add WALNUT_BIN_DIR to PATH if not already present
  PROFILE_FILE="$HOME/.profile"
  if ! grep -q "export PATH=\"$WALNUT_BIN_DIR:\$PATH\"" "$PROFILE_FILE" 2>/dev/null; then
    echo "Adding $WALNUT_BIN_DIR to your PATH in $PROFILE_FILE..."
    echo "export PATH=\"$WALNUT_BIN_DIR:\$PATH\"" >> "$PROFILE_FILE"
    echo "Please reload your shell or run 'source $PROFILE_FILE' to apply the changes."
  else
    echo "$WALNUT_BIN_DIR is already in your PATH."
  fi
else
  echo "No scripts found to set up."
fi

# Clean up temporary files
rm -rf "$TMP_DIR"

echo "Installation complete!"

