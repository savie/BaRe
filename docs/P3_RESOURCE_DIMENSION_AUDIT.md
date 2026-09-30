# P3 Resource / Dimension Audit

## Scope

Reference: Swift Backup 5.1.0 (versionCode 620), using the supplied decompile as source of truth.

Target: `savie/BaRe`, branch `rewrite`.

This audit is static only. No build, install, runtime, or visual verification was performed.

## Reference baseline

The Reference `res/values*/dimens.xml` set contains:

- 20 dimension resource files.
- 839 unique dimension names across those files.
- 67 names outside the known AndroidX/AppCompat/Material/MDC/Preference/fast-scroll/alpha helper prefix families used for dependency/library resources.

The 67-name set is the current project-facing dimension parity scope.

## Result

All 67 names in that scope are now present in BaRe's base `values/dimens.xml` with Reference values.

Reference qualifier-specific project-facing dimensions were also restored:

| Qualifier | Resource | Reference value |
|---|---|---:|
| `values-land` | `activity_horizontal_margin` | `64.0dp` |
| `values-w820dp` | `activity_horizontal_margin` | `64.0dp` |
| `values-w320dp-land` | `clock_face_margin_start` | `24.0dp` |
| `values-w600dp-land` | `clock_face_margin_start` | `64.0dp` |

The base file now contains the Reference values for the full 67-name scope, including corrections to previously divergent values such as:

- `label_chip_corner_radius`: `11.0dp`
- `label_chip_stroke_width`: `1.5dp`
- `subtitle_small`: `13.0sp`
- `subtitle_smaller`: `12.0sp`
- `title`: `16.0sp`

## Dependency-resource boundary

The remaining Reference dimensions are dependency/library-prefixed resources (772 unique names). They were not blindly copied into BaRe because doing so would duplicate dependency-owned resource definitions rather than establish application-owned parity.

Therefore:

- **Dimension parity for the identified project-facing/non-library-prefixed scope: PASS**
- **Complete Reference resource/dimension matrix including dependency resources: UNKNOWN**

This distinction is intentional and must remain explicit until dependency-resource parity is separately evidenced.

## Activity safety

No Activity source was modified by this audit. Existing P3-green Activities were not reopened.

## Commits

- Base dimension restoration: `6353a940e8121cd4fb777155727c5b4a9e3dd215`
- `values-land`: `248735b9debcda385357df46a84eafbcbcec356e`
- `values-w820dp`: `4e080871b792ad8f0dbd71332c753d62af21a357`
- `values-w320dp-land`: `075f475607a793cdaa1a1bcc3e73ddfe6450f8c1`
- `values-w600dp-land`: `0be6384d8b2af0744f729fa275027da0cf810b23`

Next P3 substep: complete the broader Reference resource-name/resource-content audit before promoting the overall Resource/dimension gate.
