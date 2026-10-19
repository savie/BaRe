# SBA fixture observations — BΛR☰

## Evidence source

The observations below come from the user-provided archive fixture:

`backup_swift_com.bare.zip` → `com.bare/20260919-184357-CO/com.bare.dat`

The extracted `.dat` payload is 1,669 bytes. These are byte-level observations, not a complete format specification.

## Confirmed byte observations

- Offset `0x0000`: ASCII magic `SBA1`.
- Offset `0x0090`: ASCII marker `SAE1`.
- Offset `0x032E` (decimal 814): second ASCII marker `SAE1`.
- Offset `0x0450` (decimal 1104): ASCII marker `SAI1`.
- Offset `0x0665` (decimal 1637): ASCII marker `SAF1`.
- The first `SAE1` record contains the visible entry name `data`; the second contains `data_de`.
- The same fixture's `com.bare.xml` contains a Base64-encoded text envelope beginning `v1:::`.
- The trailing JSON text embedded in `.dat` includes keys `encrypted`, `compressionLevel`, `entries`, `kind`, `packageName`, `version`, and `versionCode`. In this fixture, `encrypted` is true, `entries` is [`data`, `data_de`], and `kind` is `swiftbackup.app-data`.

## What this does not establish

These marker offsets and visible fields do **not** establish the full binary field layout, integer endianness for every field, record lengths, checksums, nonce derivation, AAD construction, AEGIS chunk framing, tag placement, or whether trailing data is always JSON. Do not implement a parser from these observations alone.

## Next reverse-engineering steps

1. Compare multiple fixtures (encrypted and unencrypted, compressed and uncompressed, empty and multi-entry) to isolate invariant header fields.
2. Correlate each observed record with the reference `createArchive` call-site arguments and native error strings.
3. Recover chunk framing and cryptographic inputs from reference disassembly and validate against known ciphertext/plaintext pairs.
4. Only then define a parser/writer and add fixture-based round-trip and corruption tests.
