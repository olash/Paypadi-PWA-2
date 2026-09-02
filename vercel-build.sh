#!/bin/bash
set -e

echo "=== Setting up Flutter SDK on Vercel ==="
if [ ! -d "$HOME/flutter" ]; then
  git clone https://github.com/flutter/flutter.git --depth 1 -b stable "$HOME/flutter"
fi

export PATH="$PATH:$HOME/flutter/bin"

flutter config --no-analytics
echo "=== Building Flutter Web Application ==="
flutter build web --release -t lib/main_dev.dart

echo "=== Build Complete: output in build/web ==="
