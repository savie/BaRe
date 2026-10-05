# Phase 2 — Android Build Contract

**State:** BUILD CONTRACT — NOT VERIFIED

## Purpose

Define the executable build boundary required to verify the Reference reconstruction.

## Reference Baseline

- AGP 9.2.1
- compileSdk 37
- minSdk 26
- targetSdk 37
- versionName 5.1.0
- versionCode 620

These are Reference facts, not proof of BaRe parity.

## Valid Build Evidence

A P2 build is valid only when:
1. Gradle executes;
2. Android SDK/API 37 is available;
3. dependencies resolve;
4. required Reference classes resolve;
5. manifest and authorities resolve;
6. resources compile;
7. APK packaging succeeds.

A javac structural compile is not an Android build.

## Dependency Verification

A dependency becomes VERIFIED only after:
- declaration;
- class resolution;
- package/class identity match;
- manifest/configuration match;
- relevant runtime verification.

## Current State

Gradle project files and dependency declarations exist, but a real Android Gradle/APK build has not been verified.

**State:** BLOCKED / NOT VERIFIED.

## Required Evidence

Record Gradle/JDK/SDK versions, resolved dependency graph, build command/result, APK artifact and manifest/resource compilation result.
