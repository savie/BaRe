#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
ABI="${1:?usage: build-prototype.sh <abi> [output-dir]}"
OUTPUT_DIR="${2:-$ROOT/build/libsba-cpp/artifacts/$ABI}"
OUTPUT_NAME="${SBA_LIBRARY_OUTPUT_NAME:-sba_archive_cpp}"

case "$ABI" in
  arm64-v8a|armeabi-v7a|x86|x86_64) ;;
  *) echo "Unsupported Android ABI: $ABI" >&2; exit 2 ;;
esac

: "${ANDROID_HOME:?ANDROID_HOME must point to the Android SDK}"
NDK_VERSION="${ANDROID_NDK_VERSION:-27.2.12479018}"
CMAKE_VERSION="${CMAKE_VERSION:-3.22.1}"
NDK="$ANDROID_HOME/ndk/$NDK_VERSION"
TOOLCHAIN="$NDK/build/cmake/android.toolchain.cmake"
CMAKE_BIN="$ANDROID_HOME/cmake/$CMAKE_VERSION/bin/cmake"
test -f "$TOOLCHAIN"
test -x "$CMAKE_BIN" || { echo "Pinned CMake $CMAKE_VERSION is not installed at $CMAKE_BIN" >&2; exit 2; }

BUILD_DIR="$ROOT/build/libsba-cpp/$ABI"
"$CMAKE_BIN" -S "$ROOT/tools/libsba-archive-cpp" -B "$BUILD_DIR" \
  -DCMAKE_TOOLCHAIN_FILE="$TOOLCHAIN" \
  -DANDROID_ABI="$ABI" \
  -DANDROID_PLATFORM=android-24 \
  -DCMAKE_BUILD_TYPE=Release -DSBA_LIBRARY_OUTPUT_NAME="$OUTPUT_NAME"
"$CMAKE_BIN" --build "$BUILD_DIR" --parallel "${BUILD_JOBS:-2}"

mkdir -p "$OUTPUT_DIR"
cp "$BUILD_DIR/lib${OUTPUT_NAME}.so" "$OUTPUT_DIR/lib${OUTPUT_NAME}.so"
NDK_BIN="$NDK/toolchains/llvm/prebuilt/linux-x86_64/bin"
"$NDK_BIN/llvm-readelf" -h "$OUTPUT_DIR/lib${OUTPUT_NAME}.so"
"$NDK_BIN/llvm-readelf" -Ws "$OUTPUT_DIR/lib${OUTPUT_NAME}.so" > "$OUTPUT_DIR/jni-symbols.txt"
printf 'ABI=%s\nGIT_SHA=%s\n' "$ABI" "${GITHUB_SHA:-local}" > "$OUTPUT_DIR/BUILD-METADATA.txt"
sha256sum "$OUTPUT_DIR/lib${OUTPUT_NAME}.so" | tee "$OUTPUT_DIR/SHA256SUMS.txt"

# Safety invariant: this helper writes only to OUTPUT_DIR. It never writes to
# bare-implementation/lib; callers must explicitly choose an isolated build-copy destination.
