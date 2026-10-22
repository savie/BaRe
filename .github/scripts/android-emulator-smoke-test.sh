#!/usr/bin/env bash
set -euo pipefail

trap 'timeout 10s adb logcat -d -v time > "$RUNNER_TEMP/bare-smoke-logcat.txt" 2>/dev/null || true' EXIT

timeout 10s adb devices -l || true

# Bound every ADB operation: a wedged ADB transport must fail with diagnostics,
# not consume the entire emulator action timeout.
for attempt in $(seq 1 60); do
  state="$(timeout 5s adb -s emulator-5554 get-state 2>/dev/null || true)"
  if [[ "$state" == "device" ]]; then break; fi
  if [[ "$attempt" -eq 10 || "$attempt" -eq 25 || "$attempt" -eq 40 ]]; then
    timeout 10s adb reconnect offline || true
  fi
  sleep 2
done

state="$(timeout 5s adb -s emulator-5554 get-state 2>/dev/null || true)"
if [[ "$state" != "device" ]]; then
  timeout 10s adb devices -l || true
  echo "ADB transport did not reach online state within the bounded wait."
  exit 1
fi

timeout 60s adb -s emulator-5554 wait-for-device
boot=""
for attempt in $(seq 1 60); do
  boot="$(timeout 8s adb -s emulator-5554 shell getprop sys.boot_completed 2>/dev/null | tr -d '\r' || true)"
  [[ "$boot" == "1" ]] && break
  sleep 2
done
boot="$(timeout 8s adb -s emulator-5554 shell getprop sys.boot_completed 2>/dev/null | tr -d '\r' || true)"
if [[ "$boot" != "1" ]]; then
  timeout 10s adb devices -l || true
  echo "Android emulator did not complete boot."
  exit 1
fi

timeout 15s adb -s emulator-5554 shell settings put global window_animation_scale 0.0 || true
timeout 15s adb -s emulator-5554 shell settings put global transition_animation_scale 0.0 || true
timeout 15s adb -s emulator-5554 shell settings put global animator_duration_scale 0.0 || true
timeout 90s adb -s emulator-5554 install -r "app/build/outputs/apk/debug/app-debug.apk"
timeout 15s adb -s emulator-5554 logcat -c

activities=(
  "com.bareapps.barebackup.home.HomeActivity"
  "com.bareapps.barebackup.home.search.HomeSearchActivity"
  "com.bareapps.barebackup.appslist.ui.list.AppListActivity"
  "com.bareapps.barebackup.folders.ui.FoldersDashActivity"
  "com.bareapps.barebackup.wifi.WifiActivity"
)

for activity in "${activities[@]}"; do
  timeout 15s adb -s emulator-5554 shell am force-stop com.bareapps.barebackup || true
  timeout 45s adb -s emulator-5554 shell am start -n "com.bareapps.barebackup/$activity"
  sleep 3
done

log="$(timeout 20s adb -s emulator-5554 logcat -d -t 5000 || true)"
if printf '%s\n' "$log" | grep -B5 -A10 "FATAL EXCEPTION" | grep -q "com.bareapps.barebackup"; then
  printf '%s\n' "$log" | grep -B5 -A10 "FATAL EXCEPTION"
  exit 1
fi
