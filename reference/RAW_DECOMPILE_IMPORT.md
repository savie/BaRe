# Raw decompile reference import

The supplied decompile archive contains the raw evidence set:

- APK: Swift Backup 5.1.0 (620)
- Decompile archive: SwiftBackup-5.1.0-620-decompiled.zip
- Archive size: 54 MB
- Extracted size: 207,824,187 bytes
- Extracted files: 30,432
- Java: 12,611
- Smali: 14,217
- XML: 2,560
- PNG: 338
- Other resources/binaries: present

## Intended layout

When the supplied archive is imported locally, preserve the decompiler output under:

reference/raw-decompile/

Do not rename or rewrite the raw evidence in this layer. The raw layer is intentionally allowed to contain obfuscated names and decompiler artifacts.

The next layer is the reconstructed source. It may progressively replace unclear names and structures only when supported by evidence.

## Current limitation

The GitHub connector available to this session can write UTF-8 repository files, but it cannot directly upload the 54 MB local binary archive as a repository object. Therefore this commit records the import contract and inventory statistics rather than falsely claiming the binary archive has been uploaded.

`tools/import-decompile.sh` performs the local import when the archive is available.
