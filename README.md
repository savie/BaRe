# BaRe

BaRe adalah **backup & restore manager Android**.

## Governance

BaRe adalah project di dalam `Varnexis-Workspace`, jadi repository ini tidak berdiri sendiri dari sisi governance.

**Canonical governance:** [`Varnexis-Workspace/GOVERNANCE`](https://github.com/savie/Varnexis-Workspace/tree/master/GOVERNANCE)

**Authority utama:** [`GOVERNANCE/AUTHORITY.md`](https://github.com/savie/Varnexis-Workspace/blob/master/GOVERNANCE/AUTHORITY.md)

Boundary dua repository:

- **Varnexis-Workspace** — governance, lifecycle, cross-project state, requirements, decisions, authorization, dan continuity workspace.
- **BaRe** — product, architecture, capability matrix, reference, implementation, tests, dan verification project.

Kalau bekerja di BaRe, baca README ini **dan** governance yang ditunjuk di atas sebelum membuat perubahan consequential. Jangan mengasumsikan repository BaRe memuat seluruh context workspace.

## Project Documentation

Dokumen technical/product BaRe berada di satu folder saja:

1. [`docs/product.md`](./docs/product.md) — product scope, UX baseline, journeys, dan product rules.
2. [`docs/architecture.md`](./docs/architecture.md) — system shape, boundary, storage, archive, security, runtime, dan verification architecture.
3. [`docs/capability_matrix.md`](./docs/capability_matrix.md) — capability map, dependency, state, constraint, dan verification path.
4. [`docs/reference.md`](./docs/reference.md) — evidence audit Swift Backup sebagai functional/workflow reference; bukan source implementation.
5. [`docs/worklog.md`](./docs/worklog.md) — continuity pekerjaan BaRe; update setiap pekerjaan engineering consequential.

Tidak ada kebutuhan untuk membuat file/folder contract terpisah hanya demi dokumentasi. Implementasi mengikuti dokumen utama di atas dan struktur code dibuat sesederhana mungkin berdasarkan kebutuhan nyata.

## Build Approach

BaRe dibangun dengan whole-product UX-first:

`Whole-product UX → Shared Foundation → Capability Implementation → Integration → Verification → Refinement`

UX shell bukan bukti bahwa capability backend sudah bekerja.

## Current Engineering State

Branch implementation: `v1.0/rebaseline`.

Whole-product UX shell awal sudah dibuat sebagai Android Compose application surface yang mencakup Home dan area product utama. Capability backend belum diimplementasikan pada shell ini.

CI build baseline **TERVERIFIKASI** pada GitHub Actions run #116. Device/runtime install/update **BELUM TERVERIFIKASI** pada pekerjaan baseline tersebut.

## Execution Modes

`NON_ROOT` · `ADB` · `SHIZUKU` · `ROOT`

Mode menentukan cara capability diperoleh, bukan semantic domain operation.

## Reference Boundary

Swift Backup Premium digunakan sebagai functional/workflow reference untuk discovery capability, workflow, information architecture, dan observable behavior. BaRe tetap independent: implementation, domain, UI/UX, storage, provider, security, dan verification dibangun sendiri.

Reference evidence tidak boleh diperlakukan sebagai runtime verification kecuali benar-benar diuji dan dicatat sebagai evidence.
