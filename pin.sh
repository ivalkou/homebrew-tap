#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PATH="/bin:/usr/bin"

version=$(grep '^\s*version' Casks/rapidkey.rb | head -1 | grep --only-matching -E '[0-9.]+')
cp Casks/rapidkey.rb "Casks/rapidkey@$version.rb"
sed -i '' "/^cask/ s/rapidkey/rapidkey@$version/" "Casks/rapidkey@$version.rb"
