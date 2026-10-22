#!/usr/bin/env bash
set -euo pipefail

trap 'adb logcat -d -v time > "$RUNNER_TEMP/bare-smoke-logcat.txt" 2>/dev/null || true' EXIT

adb devices -l

# ADB can report the emulator as offline while Android is booting.
for attempt in $(seq 1 60); do
  state="$(adb -s emulator-5554 get-state 2>/dev/null || true)"
  if [[ "$state" == "device" ]]; then
    break
  fi
  if [[ "$attempt" -eq 10 || "$attempt" -eq 25 || "$attempt" -eq 40 ]]; then
    adb reconnect offline || true
  fi
  sleep 2
done

state="$(adb -s emulator-5554 get-state 2>/dev/null || true)"
if [[ "$state" != "device" ]]; then
  adb devices -l
  echo "ADB transport did not reach online state."
  exit 1
fi

adb -s emulator-5554 wait-for-device
for attempt in $(seq 1 60); do
  boot="$(adb -s emulator-5554 shell getprop sys.boot_completed 2>/dev/null | tr -d '\r' || true)"
  [[ "$boot" == "1" ]] && break
  sleep 2
done

boot="$(adb -s emulator-5554 shell getprop sys.boot_completed 2>/dev/null | tr -d '\r' || true)"
if [[ "$boot" != "1" ]]; then
  adb devices -l
  echo "Android emulator did not complete boot."
  exit 1
fi

timeout 15s adb -s emulator-5554 shell settings put global window_animation_scale 0.0 || true
timeout 15s adb -s emulator-5554 shell settings put global transition_animation_scale 0.0 || true
timeout 15s adb -s emulator-5554 shell settings put global animator_duration_scale 0.0 || true
timeout 60s adb -s emulator-5554 install -r "app/build/outputs/apk/debug/app-debug.apk"
adb -s emulator-5554 logcat -c

activities=(
  "com.bareapps.barebackup.home.HomeActivity"
  "com.bareapps.barebackup.home.search.HomeSearchActivity"
  "com.bareapps.barebackup.appslist.ui.list.AppListActivity"
  "com.bareapps.barebackup.folders.ui.FoldersDashActivity"
  "com.bareapps.barebackup.wifi.WifiActivity"
)

for activity in "${activities[@]}"; do
  adb -s emulator-5554 shell am force-stop com.bareapps.barebackup || true
  timeout 30s adb -s emulator-5554 shell am start -n "com.bareapps.barebackup/$activity"
  sleep 3
done

log="$(adb -s emulator-5554 logcat -d -t 5000)"
if printf '%s\n' "$log" | grep -B5 -A10 "FATAL EXCEPTION" | grep -q "com.bareapps.barebackup"; then
  printf '%s\n' "$log" | grep -B5 -A10 "FATAL EXCEPTION"
  exit 1
fi
