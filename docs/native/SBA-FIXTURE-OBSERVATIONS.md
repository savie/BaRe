# SBA fixture observations — BΛR☰

## Evidence source

The observations below come from the user-provided archive fixture:

`backup_swift_com.bare.zip` → `com.bare/20260919-184357-CO/com.bare.dat`

The extracted `.dat` payload is 1,669 bytes (0x685). These are byte-level observations from one encrypted, two-entry fixture, not a complete format specification.

## Confirmed byte observations

- Offset `0x0000`: ASCII magic `SBA1`.
- Offset `0x0090`: ASCII marker `SAE1`; the visible entry name is `data`.
- Offset `0x032E` (decimal 814): second `SAE1`; the visible entry name is `data_de`.
- Offset `0x0450` (decimal 1104): ASCII marker `SAI1`.
- Offset `0x0460`: JSON text begins. It is 290 bytes long and ends at offset `0x0581` inclusive. The four bytes at `0x045C..0x045F` are `00 00 01 22`; interpreted as a big-endian unsigned integer, this is 290 and matches that JSON byte length. This is a strong single-fixture correlation, not yet a validated general field definition.
- Offset `0x0582` onward contains NUL padding and binary-looking data; the bytes are not safely classifiable from this sample alone.
- Offset `0x0665` (decimal 1637): ASCII marker `SAF1`; exactly 32 bytes remain in the file from this marker through EOF.
- The JSON payload parses as: `appId="combare"`, `backupCache=false`, `compressionLevel="FASTEST"`, `dataSize=19456`, `deDataSize=171008`, `encrypted=true`, `entries=["data","data_de"]`, `includeDeviceProtectedData=true`, `kind="swiftbackup.app-data"`, `packageName="com.bare"`, `version=1`, `versionCode=333`, and `versionName="1.0"`.
- The same fixture's `com.bare.xml` contains a Base64-encoded text envelope beginning `v1:::`.

## What this does not establish

The offsets and visible fields do **not** establish the full binary field layout, whether the apparent JSON-length field has the same meaning across versions, integer endianness for every field, record lengths for `SAE1`, footer semantics, checksums, nonce derivation, AAD construction, AEGIS chunk framing, tag placement, or whether trailing data is always JSON. The JSON's `dataSize` and `deDataSize` values should not be equated to encrypted payload byte lengths without corroboration. Do not implement a parser from these observations alone.

## Next reverse-engineering steps

1. Obtain and compare multiple fixtures (encrypted and unencrypted, compressed and uncompressed, empty and multi-entry) to isolate invariant header fields.
2. Correlate each observed record with the reference `createArchive` call-site arguments and native error strings.
3. Recover chunk framing and cryptographic inputs from reference disassembly and validate against known ciphertext/plaintext pairs.
4. Only then define a parser/writer and add fixture-based round-trip and corruption tests.
