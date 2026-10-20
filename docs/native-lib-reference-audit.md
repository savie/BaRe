# Native library audit: SwiftBackup 5.1.0 (620)

Reference files inspected:
- `output/jadx/sources/org/swiftapps/swiftbackup/SwiftApp.java`
- `output/jadx/sources/defpackage/gn5.java`
- `output/jadx/sources/org/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity.java`
- `output/jadx/sources/defpackage/l62.java`
- `output/jadx/resources/lib/<abi>/libnative-lib.so`

## JNI contract

Reference class: `org.swiftapps.swiftbackup.SwiftApp`

- `getGoogleAuthAndroidClientId(): String`
- `getGoogleAuthWebClientId(): String`
- `isLocalNetworkTcpBlockedByPermission(String, int, int): boolean`

The reference loads the library with `System.loadLibrary("native-lib")` during `SwiftApp.onCreate()`.

The two client ID constants are XOR-encoded with byte `0x2e` in the native binary and decoded on first use. Their decoded values are reproduced in `native-lib.cpp` using the same XOR storage pattern.

Call sites found:
- Android OAuth client ID: `defpackage/gn5.java:14`; redirect URI is separately defined there as `org.swiftapps.swiftbackup:/oauth`.
- Web OAuth client ID: `GmsSignInActivity.java:66`; used to configure Google Sign-In.
- TCP/network-policy test: `defpackage/l62.java:443`, passed as a callback during cloud connection-error handling.

## TCP function behavior reconstructed from arm64-v8a disassembly

- JNI parameter order: host, port, timeout milliseconds.
- Rejects null host and ports outside 1..65535.
- Resolves addresses using `getaddrinfo`, opens TCP sockets, and sets them nonblocking with `fcntl`.
- Calls `connect`; on selected error paths it polls for `POLLOUT` and checks `SO_ERROR`.
- Dynamically resolves `android_getnetworkblockedreason` from `libandroid.so`. The reference treats return value 1 as the positive blocked condition.
- Timeout is clamped to 50..2000 ms.
- Disassembly routes errno values 110, 114, 115, 13, and 1 through the poll / blocked-reason path.

The implementation is a source-level reconstruction from decompilation/disassembly, not a byte-identical rebuild. Runtime parity still needs Android-device tests against the reference behavior. Google OAuth IDs are reference values; their authorization for BΛR☰'s package/signing certificate is not implied.
