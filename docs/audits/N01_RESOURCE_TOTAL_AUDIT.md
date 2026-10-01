# N-01 RESOURCE — TOTAL AUDIT

## Status

**AUDIT COMPLETE — DOCUMENT ONLY**

- Domain: **N-01 Resource**
- Phase: P3
- Scope: complete Reference resource inventory, resource-symbol inventory, source/resource dependency graph, qualifier/variant audit, resource-to-screen/resource-to-code mapping, cross-domain transfer, implementation register and closure criteria.
- Implementation performed: **NO**
- Build/install/runtime performed: **NO**
- Reference mutation: **NO**
- Canonical Reference used: **local ZIP**
- Canonical path: `/mnt/data/SwiftBackup-5.1.0-620-decompiled.zip`

This document is the N-01 audit contract. The implementation phase may use this document as its N-01 work register without repeating the same inventory audit, unless the canonical Reference fingerprint changes or new evidence invalidates a finding.

---

## 1. Canonical Reference fingerprint

The audit was performed from the supplied local Reference archive, not from assumptions and not from the mutable BaRe implementation.

### Archive

`SwiftBackup-5.1.0-620-decompiled.zip`

### SHA-256

`148e9b4ef265ead284cb4af060c89f44898dcb81747702ef6bef50c863f92948`

### Extracted APKTool resource tree

`output/apktool/res/`

### Deterministic resource-tree digest

`db3fc1bde7695ef617eaa4f2df00042743ec44712ea88051c39a377913952866`

The resource-tree digest is calculated from the sorted relative resource path plus SHA-256 of each physical resource file.

**Rule:** if either fingerprint changes, this N-01 audit is stale and must not be treated as the current Reference contract.

---

# 2. Audit boundary

N-01 owns the **resource surface and resource contract**.

It does not independently own every semantic property of every resource.

### N-01 owns

- resource existence
- resource filename/name
- resource type
- resource directory/qualifier
- variant coverage
- layout structure
- resource-to-resource references
- resource-to-screen mapping
- resource-to-code mapping
- menu presence and wiring
- drawable/icon presence
- font presence
- animation/animator/interpolator presence
- raw resource presence
- XML configuration resource presence
- mipmap/icon surface
- resource identity-bearing names that need transfer to N-11
- resource files that are required by the Reference UI surface
- detection of missing/orphan/undefined resource references
- implementation ordering and dependency ownership

### Cross-domain ownership

The following are **not re-implemented under N-01 when their semantic value already belongs to another normalized domain**:

| Resource contract | Owner |
|---|---|
| String text/value parity | N-02 |
| Dimension numeric value/parity | N-03 |
| Styles / themes / colors / custom attrs | N-04 |
| Manifest references/configuration | N-05 |
| Intent/deep-link resource contracts | N-06 |
| Permission-related resource text/config | N-07 |
| Navigation/resource transition behavior | N-08 |
| Lifecycle/state-dependent resource behavior | N-09 |
| Dialog/error/loading semantic behavior | N-10 |
| Branding/product identity | N-11 |
| Java implementation constraints | N-12 |
| Fake/stub behavior | N-13 |
| Boundary/backend/provider/engine ownership | N-14 |
| Static hygiene/documentation | N-15 |

Therefore a resource can be **N-01 registered** while its implementation is owned by another N-domain.

---

# 3. Physical resource inventory — TOTAL

The extracted Reference resource tree contains:

**1,491 physical resource files.**

| Resource directory family | Physical files |
|---|---:|
| anim | 41 |
| animator | 42 |
| color | 223 |
| drawable | 647 |
| font | 7 |
| interpolator | 18 |
| layout | 348 |
| menu | 44 |
| mipmap | 4 |
| raw | 12 |
| values* | 87 |
| xml | 18 |
| **TOTAL** | **1,491** |

* `values*` means all values qualifier directories. The 87 files are XML files containing resource symbol definitions.

### Qualifier directories observed

#### Drawable

- drawable
- drawable-anydpi
- drawable-anydpi-v31
- drawable-hdpi
- drawable-ldpi
- drawable-ldrtl-hdpi
- drawable-ldrtl-mdpi
- drawable-ldrtl-xhdpi
- drawable-ldrtl-xxhdpi
- drawable-ldrtl-xxxhdpi
- drawable-mdpi
- drawable-night-nodpi
- drawable-nodpi
- drawable-watch
- drawable-xhdpi
- drawable-xxhdpi
- drawable-xxxhdpi

#### Layout

- layout
- layout-land
- layout-sw600dp
- layout-w600dp
- layout-watch

#### Color

- color
- color-night
- color-v31

#### Values

The Reference uses a broad qualifier matrix including:

- locale variants
- orientation variants
- screen-size variants
- width/height variants
- density variants
- night mode
- API-level variants
- watch variants

Observed values qualifier directories include:

`values`, `values-land`, `values-port`, `values-night`, `values-night-v31`, `values-v28`, `values-v31`, `values-v33`, `values-v34`, `values-v35`, `values-large`, `values-xlarge`, `values-hdpi`, `values-sw360dp`, `values-sw600dp`, `values-w320dp-land`, `values-w360dp-port`, `values-w400dp-port`, `values-w600dp`, `values-w600dp-land`, `values-w820dp`, `values-h320dp`, `values-h320dp-port`, `values-h360dp-land`, `values-h480dp`, `values-h480dp-land`, `values-h550dp-port`, `values-h720dp`, `values-watch`, and the supported locale/region variants.

---

# 4. Logical resource-symbol inventory — TOTAL

After excluding `public.xml` entries from the definition count, the Reference contains:

**8,231 logical resource symbols.**

| Type | Logical symbols |
|---|---:|
| anim | 41 |
| animator | 42 |
| array | 15 |
| attr | 1,466 |
| bool | 4 |
| color | 787 |
| dimen | 839 |
| drawable | 517 |
| font | 7 |
| id | 1,538 |
| integer | 61 |
| interpolator | 18 |
| item | 4 |
| layout | 342 |
| menu | 44 |
| mipmap | 3 |
| plurals | 2 |
| raw | 12 |
| string | 1,384 |
| style | 1,087 |
| xml | 18 |
| **TOTAL** | **8,231** |

### Important

The logical count is intentionally different from the physical file count.

Example:

`home_activity` may have a base layout and a width-specific layout, but it is still one logical layout resource name.

Likewise, a string/color/dimension/style may have multiple locale/API/night qualifiers while remaining one logical resource symbol.

---

# 5. Values inventory

The Reference values surface is large and must not be interpreted as all application-owned.

Observed logical definitions include:

- 1,384 strings
- 839 dimens
- 787 colors
- 1,087 styles
- 1,466 attrs
- 1,538 IDs
- 61 integers
- 15 arrays
- 4 bools
- 2 plurals
- 4 item-style/value entries

The values tree contains both:

1. application-specific contracts;
2. AndroidX / Material / third-party dependency resources.

Therefore:

**Do not copy the entire Reference values tree blindly into BaRe.**

N-01 records the resource contract; N-02/N-03/N-04 decide the semantic implementation of their owned resource classes.

---

# 6. Resource dependency graph

The audit built a static resource graph from:

1. Reference Java source `R.<type>.<name>` references;
2. AndroidManifest resource references;
3. XML `@type/name` references;
4. XML `?attr/name` references;
5. style `parent` relationships;
6. resource-to-resource transitive closure.

The graph reaches:

**3,623 logical symbols** when using the initial Reference application-package source graph.

When the full JADX source tree is included to capture generated/view-binding/merged-source resource references, the reachable Reference resource surface expands substantially.

For implementation planning, the complete-source graph is the authoritative static dependency graph because decompiled/generated support classes can carry references needed by the application surface.

### Complete-source graph result

- Reachable logical resource symbols after closure: **4,850 candidate symbols**
- Candidate symbols not reached by the graph: **839**
- Direct source/reference resource candidates before closure: **3,773**

The 4,850 figure includes application-owned resources plus shared/library resources reachable through the Reference build. It is **not** a claim that all 4,850 must be copied into BaRe.

---

# 7. Reachable resource families

The complete-source graph identifies the following major reachable candidate surface:

| Type | Reachable candidate symbols |
|---|---:|
| anim | 26 |
| animator | 11 |
| array | 15 |
| attr | 1,097 |
| bool | 2 |
| color | 327 |
| dimen | 155 |
| drawable | 338 |
| font | 7 |
| id | 1,080 |
| integer | 20 |
| interpolator | 7 |
| layout | 289 |
| menu | 44 |
| mipmap | 3 |
| plurals | 1 |
| raw | 12 |
| string | 1,286 |
| style | 115 |
| xml | 15 |
| **TOTAL** | **4,850** |

This is the **Reference dependency surface**, not a blind-copy list.

---

# 8. Layout audit

Reference logical layouts:

**342**

Physical layout XML files:

**348**

The difference is caused by qualifier variants.

The complete-source dependency graph reaches:

**289 layout candidates.**

### High-value application layout families

The Reference layout surface covers, among others:

- intro
- home
- apps
- app configuration
- app detail
- folder backup/restore
- folder picker
- cloud connection
- cloud diagnostics
- cloud orphan cleanup
- schedule
- SMS/calls
- WiFi
- walls
- settings
- premium
- password
- SLOG
- task/config flows
- labels
- locale
- storage management
- authentication
- provider-specific cloud login
- dialogs
- list/item/card components
- shared toolbar/appbar surfaces

### Confirmed dedicated Intro layouts

- `intro_activity`
- `intro_activity_permissions`
- `intro_activity_sign_in`
- `intro_benefit_card_view`
- `intro_permission_card_view`
- `intro_skip_sign_in_button`
- `intro_storage_setup_failure_dialog`

### Confirmed Home layouts

- `home_activity`
- `home_appbar`
- `home_search_activity`
- `home_search_result_item`
- `home_search_app_result_item`
- `home_search_folder_result_item`
- `home_search_quick_action_item`

### Layout qualifier findings

The following reachable logical resources have multiple layout variants:

| Resource | Variants |
|---|---|
| home_activity | layout + layout-w600dp |
| material_timepicker | layout + layout-land |

The `material_timepicker` family is dependency/library territory and must not be treated as BaRe-owned UI merely because it exists in the Reference APK.

### Layout orphan candidates

Four candidate layouts are not reached by the complete static graph:

- `apk_import_activity`
- `app_visibility_diagnostics_activity`
- `black_list_activity`
- `filen_signin_two_factor_dialog`

These are **not automatically dead**.

They remain registered as:

**ORPHAN / STATIC-UNREACHED**

because decompiled/obfuscated control flow can prevent a reliable static edge from being recovered.

Implementation must not delete them.

If the corresponding Reference Activity/dialog is part of the 71 Activity reconstruction set, the layout remains an implementation candidate.

---

# 9. Menu audit

Reference contains:

**44 logical menu resources.**

Complete-source graph reaches all **44**.

Registered menu surface:

- `menu_apk_import`
- `menu_app_swipe_actions`
- `menu_apps`
- `menu_apps_batch_activity`
- `menu_apps_config_run_activity`
- `menu_apps_dash`
- `menu_apps_switch`
- `menu_blacklist_apps`
- `menu_bottom_home`
- `menu_calls_dash`
- `menu_chat`
- `menu_cloud_info_storage_card`
- `menu_cloud_service`
- `menu_config_edit`
- `menu_config_list`
- `menu_config_settings`
- `menu_detail_backup_card_actions`
- `menu_detail_backup_chip_actions`
- `menu_detail_storage_chip_actions`
- `menu_folder_backup`
- `menu_folder_dash_activity`
- `menu_folder_dash_item_popup`
- `menu_folder_detail_activity`
- `menu_folder_picker`
- `menu_folders_batch_activity`
- `menu_intro`
- `menu_intro_storage_setup_failure`
- `menu_label_edit`
- `menu_labels`
- `menu_locale_activity`
- `menu_new_schedule`
- `menu_popup_blacklisted_app`
- `menu_popup_sms_backup_item`
- `menu_popup_wifi_item_backedup`
- `menu_popup_wifi_item_system`
- `menu_premium`
- `menu_schedule_item`
- `menu_select_all`
- `menu_slog`
- `menu_sms_dash`
- `menu_smscalls_backups`
- `menu_task_activity`
- `menu_walls_apply`
- `menu_walls_explore`

**N-01 action:** menu presence and XML structure belong here.

**N-08 action:** menu-triggered navigation behavior belongs to N-08.

---

# 10. Drawable / icon audit

Reference physical drawable files:

**647**

Logical drawable symbols:

**517**

Complete-source graph reaches:

**338 drawable candidates.**

The drawable surface contains:

- app icons
- toolbar icons
- navigation icons
- backup/restore icons
- storage icons
- cloud/provider branding
- settings icons
- SMS/call icons
- WiFi icons
- folder icons
- label/tag icons
- premium surfaces
- intro illustrations
- state selectors
- checkbox/radio state drawables
- animation/vector drawables
- fast-scroll visuals
- progress/loading visuals
- dialog/background shapes
- third-party dependency assets

### Provider branding resources observed

Reference includes dedicated provider assets such as:

- `ic_branding_amazon_s3`
- `ic_branding_backblaze_b2`
- `ic_branding_box`
- `ic_branding_cloud_mail_ru`
- `ic_branding_cloudflare_r2`
- `ic_branding_digitalocean_spaces`
- `ic_branding_dropbox`
- `ic_branding_filen`
- `ic_branding_google_drive`
- `ic_branding_hetzner_object_storage`
- `ic_branding_hidrive`
- `ic_branding_idrive_e2`
- `ic_branding_koofr`
- `ic_branding_mega`
- `ic_branding_mega_s4`
- `ic_branding_nextcloud`
- `ic_branding_onedrive`
- `ic_branding_ovhcloud_object_storage`
- `ic_branding_owncloud`
- `ic_branding_pcloud`
- `ic_branding_s3`
- `ic_branding_scaleway_object_storage`
- `ic_branding_seafile`
- `ic_branding_sftp`
- `ic_branding_smb`
- `ic_branding_storj`
- `ic_branding_synology`
- `ic_branding_terabox`
- `ic_branding_wasabi`
- `ic_branding_wd_my_cloud`
- `ic_branding_yandex_disk`

These are resource contracts. Provider execution itself remains outside N-01.

### Drawable qualifier findings

Reachable multi-variant drawable resources include:

- `common_full_open_on_phone`: hdpi + xhdpi
- `googleg_standard_color_18`: hdpi + mdpi + xhdpi + xxhdpi
- `ic_branding_filen`: night-nodpi + nodpi
- `ic_launcher_splash`: anydpi + anydpi-v31
- `yubikit_ykfamily`: anydpi + hdpi + ldpi + mdpi + xhdpi + xxhdpi + xxxhdpi

The qualifier matrix is part of the N-01 contract and must not be collapsed to one file.

---

# 11. Animation audit

Reference contains:

- 41 anim resources
- 42 animator resources
- 18 interpolator resources

The complete graph reaches:

- 26 anim candidates
- 11 animator candidates
- 7 interpolator candidates

Application-facing animation resources include:

### Anim

- `home_search_close_enter`
- `home_search_close_exit`
- `wall_apply_activity_enter_anim`
- `wall_apply_activity_exit_anim`

### Animator

- `avd_schedule_fab_menu_close_to_plus`
- `avd_schedule_fab_menu_plus_to_close`
- `button_state_list_animator_m3`

### Interpolator

The Reference contains both Material/library interpolators and application-facing animation timing resources.

Animation presence is N-01.

Animation semantics/transition behavior is transferred to N-08/N-09 where applicable.

---

# 12. Font audit

Reference contains:

**7 fonts**

- `condensed_regular`
- `main_bold`
- `main_medium`
- `main_regular`
- `mono_bold`
- `mono_medium`
- `mono_regular`

All seven are reachable from the Reference resource graph.

Font parity is therefore a real N-01 requirement.

Typography semantics/style assignment are shared with N-04.

---

# 13. Raw resource audit

Reference contains:

**12 raw resources**

- `changelog`
- `checkmark`
- `error`
- `msal_default_config`
- `odrive_browser`
- `odrive_webview`
- `task_complete_sound_error`
- `task_complete_sound_success`
- `third_party_license_metadata`
- `third_party_licenses`
- `warning`
- `zoom`

All 12 are reachable by the complete-source graph.

Ownership must be classified before implementation:

- app-owned runtime/config raw resources → N-01
- MSAL/provider/library raw resources → dependency/boundary ownership
- third-party license assets → static resource/documentation ownership
- task sounds → app feature boundary, not a license to invent behavior

---

# 14. XML resource audit

Reference contains:

**18 XML resource files**

Logical XML resources include:

- `filepaths`
- `locales_config`
- `network_security_config`
- `settings`
- `settings_about`
- `settings_apps`
- `settings_calls`
- `settings_cloud`
- `settings_config`
- `settings_contact`
- `settings_folders`
- `settings_labs`
- `settings_messages`
- `m3_button_group_child_size_change`
- `m3_list_item_shape_state_list`
- `m3_split_button_inner_corner_size_state_list`
- `m3expressive_button_shape_state_list`
- `m3expressive_connected_buttons_inner_corner_size_state_list`

### N-01 critical XML resources

#### `filepaths`

Resource contract used for file/provider URI exposure.

Ownership transfers to N-05/N-14 where manifest/provider boundary is involved.

#### `locales_config`

Application locale resource.

N-01 registers presence.

N-05 owns manifest linkage.

#### `network_security_config`

Reference contains this resource.

Earlier implementation work intentionally did **not** blind-copy it because the BaRe-side dependency/config contract was not proven.

N-01 records it as:

**REFERENCE PRESENT / TARGET IMPLEMENTATION NOT YET PROVEN**

Do not silently treat absence as parity.

#### `settings*`

The settings XML family is a real Reference resource contract and must be mapped to the corresponding settings UI.

---

# 15. Mipmap / launcher audit

Reference contains:

- `ic_launcher`
- `ic_launcher_background`
- `ic_launcher_foreground`

Physical launcher resources include:

- mipmap-anydpi
- mipmap-xxxhdpi

N-01 requires the complete launcher resource family.

N-11 owns branding identity.

N-05 owns manifest launcher linkage.

Do not solve launcher parity by changing only the manifest icon reference.

---

# 16. Qualifier / variant audit

A major N-01 risk is losing configuration-specific resources while reconstructing only the default resource.

Across candidate non-library resources:

**1,128 logical symbols have more than one qualifier representation.**

Breakdown:

| Type | Multi-qualifier logical symbols |
|---|---:|
| bool | 2 |
| color | 11 |
| dimen | 6 |
| drawable | 5 |
| integer | 2 |
| layout | 2 |
| mipmap | 1 |
| string | 1,094 |
| style | 5 |

Strings dominate because of locale translations.

Therefore:

**N-01 implementation must preserve qualifier topology, not just default values.**

N-02 remains owner of string content.

---

# 17. Static resource reference exceptions

The complete-source graph produced a small set of undefined resource references.

These are not automatically missing BaRe resources.

Examples include:

- framework attributes
- generated/library IDs
- support-library drawable names
- YubiKit/library resources
- Material widget style references
- framework/system IDs

Representative unresolved symbols include:

- `attr/name`
- `attr/textViewStyle`
- `attr/versionCode`
- `attr/versionCodeMajor`
- `attr/versionName`
- `drawable/yubikit_dialog_bg`
- `id/navigationBarBackground`
- `id/statusBarBackground`
- `id/summary`
- `integer/button_pressed_scale_down`
- `integer/letterspacing_050`
- `integer/letterspacing_060`
- `integer/letterspacing_lowest`
- `style/Widget_Material3_ListItemRevealLayout`

Classification:

**NOT A BLIND COPY LIST.**

These must be resolved by dependency ownership or framework ownership during implementation, not by inventing BaRe resources.

---

# 18. Static orphan register

The complete graph leaves:

**839 candidate logical symbols statically unreached.**

This is not equivalent to "dead resource".

### Known layout orphan candidates

- `apk_import_activity`
- `app_visibility_diagnostics_activity`
- `black_list_activity`
- `filen_signin_two_factor_dialog`

### Known identity/feature string orphan candidates

Examples:

- `app_visibility_copy_results`
- `app_visibility_diagnostics_explanation`
- `app_visibility_search_hint`
- `app_visibility_share_results`
- `billing_initialization_error`
- `cannot_purchase_with_test_release_of_app_message`
- `filen_two_factor_authentication`
- `filen_two_factor_code_hint`
- `folder_name_already_used_message`
- `folder_name_already_used_title`
- `invalid_private_key`
- `server_host_key_not_verifiable_title`
- `subscriptions_fetch_failed_msg`

Some orphan candidates are Firebase/Google/MSAL/dependency metadata.

### Orphan rule

Do not delete orphan resources during implementation.

Use:

**ORPHAN / STATIC-UNREACHED → RETAIN UNTIL OWNERSHIP OR DEADNESS IS PROVEN**

This is especially important for Activity-specific layouts and provider-specific resources.

---

# 19. Resource identity / branding findings

Resource names are not exempt from N-11.

Reference contains identity-bearing resource symbols such as:

- `swiftbackup_expressive_icon_check`
- `swiftbackup_expressive_icon_close`
- `swiftbackup_expressive_switch_thumb_icon`
- `SwiftThemeDark.Transparent`
- `open_in_swift_backup`
- `btnOpenInSwiftBackup`
- `ivSwiftBackupLogo`

These must not be globally renamed merely because they contain "Swift".

Classification rule:

1. If user-visible branding → N-11 authorized branding deviation may apply.
2. If internal resource identifier is dependency-coupled → preserve unless evidence requires target identity change.
3. If an app-owned identifier must be changed for BaRe identity → perform targeted mapping and record it.
4. Never alter the Reference source.

N-01 records the existence; N-11 owns the identity decision.

---

# 20. Resource-to-screen mapping

The resource graph confirms the following major UI/resource domains:

| Surface | Resource families |
|---|---|
| Intro | intro_* layouts, menu_intro, permission/benefit assets |
| Home | home_*, dash_*, navigation/menu assets |
| Apps | app_*, apps_*, app list/batch/config resources |
| App detail | detail_*, detail_card_*, detail_chip_* |
| Folders | folder_*, folders_*, picker/restore/edit resources |
| Cloud | cloud_*, provider branding, diagnostics, auth |
| SMS/Calls | smscalls_*, chat_*, call/message icons |
| Schedule | schedule_*, task_*, FAB animations |
| Settings | settings_* XML, settings icons, preference layouts |
| Premium | premium_* layouts/assets/menu |
| Password | user_password_*, password_strategy_*, security dialogs |
| WiFi | wifi_* layouts/assets |
| Walls | walls_*, wall_* assets/animations |
| Labels | label_*, labels_* |
| SLOG | slog_* |
| Locale | locale_* |
| Storage | storage_*, manage_space_* |
| Diagnostics | error/progress/diagnostic resources |
| Licensing | license_*, licenses_*, third-party license raw resources |

This is the resource-to-feature map to use during implementation.

---

# 21. Resource ownership model for implementation

The implementation must use this order:

`Reference ZIP → audited resource contract → ownership classification → BaRe app implementation`

Never:

`Reference ZIP → blind copy everything`

### Ownership classes

#### R-A — BaRe application-owned

Application UI/resource contract.

Action:

**RECONSTRUCT in `app/`**

#### R-L — Library/dependency-owned

AndroidX / Material / third-party resources.

Action:

**Do not manually duplicate unless BaRe dependency resolution proves the resource must be app-owned.**

#### R-X — Cross-domain

Resource exists, but semantic implementation belongs to another N-domain.

Examples:

- strings → N-02
- dimens → N-03
- styles/colors/attrs → N-04
- manifest-linked XML → N-05

Action:

**Register in N-01, implement under owner domain.**

#### R-U — Unknown/orphan

Static graph does not prove active use.

Action:

**Retain; do not delete; do not invent implementation.**

#### R-I — Identity-sensitive

Swift/BaRe identity involved.

Action:

**Transfer to N-11 for explicit decision.**

---

# 22. Recommended implementation work packages

This section is intentionally an implementation plan, not implementation.

N-01 is large enough that implementation should be split into bounded batches.

## N01-R1 — Layout / UI resource surface

Scope:

- Reference application-owned layouts
- qualifier variants
- layout includes
- IDs used by binding/view code
- layout-to-Activity mapping
- layout-to-dialog mapping
- layout-to-menu mapping

Dependency:

- N-02 strings
- N-03 dimensions
- N-04 styles/colors/attrs
- N-08 navigation

Acceptance:

- all actionable Reference layouts registered;
- no Reference-owned layout missing without documented ownership/deferment;
- qualifier variants preserved;
- no library layout copied as app-owned without evidence.

## N01-R2 — Drawable / icon / image surface

Scope:

- application-owned drawable resources
- state selectors
- vector/animated drawable assets
- provider branding resources
- launcher assets
- qualifier variants

Dependency:

- N-04 colors/styles
- N-11 branding

Acceptance:

- all app-owned drawable contracts mapped;
- provider assets preserved;
- identity-sensitive assets classified;
- no blind library duplication.

## N01-R3 — Menu surface

Scope:

- all 44 menu resources
- menu item IDs
- icon references
- menu-specific strings
- Activity ownership

Acceptance:

- 44/44 Reference menu resources accounted for;
- no unexplained menu omission;
- navigation semantics transferred to N-08.

## N01-R4 — Animation surface

Scope:

- anim
- animator
- interpolator
- FAB/menu motion assets
- Activity enter/exit assets

Acceptance:

- Reference-owned animations mapped;
- dependency animations not duplicated unnecessarily;
- transition semantics transferred to N-08/N-09.

## N01-R5 — Font / raw / XML / mipmap surface

Scope:

- 7 fonts
- 12 raw resources
- 18 XML resource contracts
- 3 logical mipmap symbols / physical variants

Acceptance:

- all actionable non-value resource contracts registered;
- provider/config/license resources explicitly classified;
- launcher resources mapped;
- network/security/config XML ownership recorded.

## N01-R6 — Cross-domain resource closure

Scope:

- resource references that belong to N-02/N-03/N-04/N-05/N-06/N-08/N-11
- ensure no resource is lost between domain handoffs

Acceptance:

- every N-01 finding has exactly one owner;
- no duplicated mutation across N-domains;
- no unresolved resource without explicit UNKNOWN/BLOCKED classification.

---

# 23. Current BaRe relationship

The audit is Reference-first.

Existing BaRe values resources already have separate normalized audits:

- N-02 Strings
- N-03 Dimensions
- N-04 Styles/Themes/Colors

Therefore N-01 must not reopen those domains merely to reproduce their values.

The current BaRe values files already include:

- `app/src/main/res/values/strings.xml`
- `app/src/main/res/values/dimens.xml`
- `app/src/main/res/values/colors.xml`
- `app/src/main/res/values/styles.xml`
- `app/src/main/res/values/attrs.xml`

Their semantic closure remains owned by their corresponding N-domains.

N-01 uses those files only to determine resource-surface presence and cross-domain dependency.

---

# 24. What is NOT allowed during N-01 implementation

Do not:

- mutate `reference/`;
- mutate the canonical ZIP;
- copy the entire Reference `res/` tree blindly;
- copy AndroidX/Material resources into `app/` merely because they exist in Reference;
- delete static orphans without proof;
- rename Swift-bearing resources globally;
- replace branding without N-11 classification;
- alter strings under N-01 when N-02 owns the value;
- alter dimensions under N-01 when N-03 owns the value;
- alter styles/colors/attrs under N-01 when N-04 owns the value;
- invent missing resources when the evidence is insufficient;
- claim runtime parity from static resource presence;
- build/install/run without explicit authorization.

---

# 25. N-01 audit result

### Inventory

**PASS**

- 1,491 physical resource files inventoried.
- 8,231 logical resource symbols inventoried.
- Qualifier families inventoried.
- Values definitions inventoried.
- Resource graph constructed.
- Layout/menu/drawable/font/raw/XML/animation/mipmap surfaces mapped.
- Static orphan candidates registered.
- Undefined references classified.
- Identity-sensitive resources registered.
- Cross-domain ownership rules recorded.

### Evidence quality

**PASS — canonical local Reference**

The audit uses the supplied local canonical ZIP directly.

No reliance on stale GitHub search results is required for the Reference inventory.

### Implementation

**NOT PERFORMED**

This is intentional.

### Runtime

**NOT VERIFIED**

No build/install/runtime claim is made.

---

# 26. N-01 exit criterion

N-01 may become **GREEN / CLOSED** only after implementation and static re-audit prove:

1. every Reference application-owned resource contract is accounted for;
2. all 44 menus are accounted for;
3. all actionable Reference layouts are accounted for;
4. qualifier variants required by Reference are preserved;
5. application-owned drawables/icons are accounted for;
6. fonts/raw/XML/mipmap resources are accounted for;
7. library/dependency resources are not unnecessarily duplicated;
8. all cross-domain resources have explicit ownership;
9. no resource is silently lost between N-domains;
10. no identity-bearing resource is changed without N-11 classification;
11. static orphan resources are retained unless deadness is proven;
12. no unexplained missing Reference resource remains;
13. Reference remains unchanged;
14. implementation diff is limited to BaRe implementation scope;
15. no build/runtime claim is used as a substitute for static parity.

Only after these conditions are met:

**N-01 → 🟢 CLOSED / STATIC PASS**

---

# 27. Final audit conclusion

**N-01 is confirmed as one of the largest P3 domains.**

The Reference resource surface is substantially larger than the simple base-directory count previously used in early inventory work.

The complete local Reference audit establishes:

`1,491 physical resource files`

`8,231 logical resource symbols`

`4,850 complete-source reachable candidate symbols`

`839 statically-unreached candidate symbols retained as audit exceptions`

The key engineering conclusion is:

> **N-01 is not a "copy missing XML files" task. It is a complete resource contract reconstruction task with ownership separation between application resources, dependency resources, and cross-domain semantic resources.**

The implementation phase can therefore proceed from this document as the N-01 audit contract without repeating the same inventory audit, provided the canonical Reference fingerprint remains:

`148e9b4ef265ead284cb4af060c89f44898dcb81747702ef6bef50c863f92948`

**Current N-01 state: 🟡 AUDITED / IMPLEMENTATION PENDING**


## 28. Execution checkpoint — N01-R3

Following the total-audit contract, bounded batch **N01-R3 — Menu surface** was executed.

### Scope
- All 44 Reference logical menu resources.
- Target path: `app/src/main/res/menu/`
- Reference source: `reference/apktool/res/menu/`
- Reference remained read-only.

### Result
- 44/44 menu contracts audited against the Reference mirror.
- Existing target menu mismatches were corrected to Reference content.
- Missing target menu resources were reconstructed from Reference.
- No navigation semantics were implemented under N-01; those remain N-08 ownership.
- N-02 string values were not mutated under this batch.
- Build/install/runtime: **NOT PERFORMED**.

### Closure state
N01-R3 is **CLOSED / STATIC PASS** as a bounded work package.

N-01 overall remains:

**🟡 AUDITED / PARTIAL IMPLEMENTATION**

Remaining N-01 work packages:
- N01-R1 Layout / UI resource surface
- N01-R2 Drawable / icon / image surface
- N01-R4 Animation surface
- N01-R5 Font / raw / XML / mipmap surface
- N01-R6 Cross-domain resource closure

N-01 must not become 🟢 until the complete N-01 exit criterion is re-audited.


## 29. Cross-domain transfer checkpoint — N-06

N-06 total Intent audit consumed the N-01 master resource contract as its dependency input.

Transfer outcome:
- Intent/deep-link resource contracts were handed to N-06.
- Manifest linkage/configuration remained N-05-owned.
- Navigation semantics remained N-08-owned.
- Branding/identity substitutions remained N-11-owned.
- N-06 completed its actionable Intent closure and returned no unresolved N-01 resource ownership defect.

This is a **transfer/closure checkpoint**, not N-01 overall closure.

N-01-R6 remains open until all cross-domain resource findings across N-02/N-03/N-04/N-05/N-06/N-08/N-11 are reconciled.


## 30. Cross-domain transfer checkpoint — N-07

N-07 consumed N-01 master inputs for permission-linked resources/contracts.

Outcome:
- permission-linked resource/configuration surfaces were accounted for;
- manifest permission declarations were reconciled;
- runtime permission contracts were audited;
- special-access behavior remains owned by its feature/engine/settings domains;
- no unresolved N-01 resource ownership defect was returned by N-07.

This does not close N-01-R6 overall.


## 31. Cross-domain transfer checkpoint — N-08

N-01 navigation/resource handoff has been consumed by N-08.

Outcome:
- navigation/resource transition behavior was audited under N-08;
- menu XML/presence remained N-01-owned;
- actionable Activity navigation and Home/tab navigation were reconciled;
- Intent/deep-link contracts remained N-06-owned;
- lifecycle/state consequences remain N-09-owned;
- no unresolved N-01 resource ownership defect was returned by N-08.

N-01-R6 remains open until all cross-domain resource findings are reconciled.


## 32. N-08 Search P3 resource closure

Search resource handoff was refined after direct Reference inspection.

P3-owned Search resources now reconciled:
- Search screen structure;
- Search result item resource surfaces;
- Quick Actions / Apps / Folder section containers;
- empty-state resource;
- system-app visibility affordance;
- close transition animations.

Search query/index/data resources remain P4-owned and were explicitly handed off rather than silently treated as N-01/N-08 closure.

N-01-R6 remains open globally.


## 33. N-09 lifecycle/state cross-domain checkpoint

N-01 resource/state handoff was consumed by N-09.

P3-owned lifecycle/recreation surfaces were audited and reconciled:
- selected navigation state;
- Parcelable/List recreation;
- Search/UI screen recreation boundaries;
- feature screen input-state restoration.

Business/provider/auth/search-index state remains downstream/P4 and is not treated as an N-01 resource defect.

N-01-R6 remains open globally.


## 34. N-10 Dialog / Error / Loading cross-domain checkpoint

N-01 resource findings transferred to N-10 were reconciled at the P3 surface:
- common error resource;
- progress/loading resource;
- detail/folder loading skeletons;
- warning/notice surfaces;
- backend error surface with authorized Supabase identity deviation.

N-10 does not claim backend/engine execution.

N-01-R6 remains open globally until all transferred resource findings are reconciled.


## 35. N-13 Fake / Stub cross-domain checkpoint

N-01 resource findings that were exposed as P3 fake/stub UI were reconciled:
- Storage Switch Reference-shaped layout;
- progress/list/FAB surface;
- locale selection surface.

Generic boundary resources are not counted as N-01 defects when they represent explicit P4 engine/provider handoffs.

N-01-R6 remains globally open.


## 36. N-14 Boundary cross-domain checkpoint

N-01 resource findings consumed by N-14 were reviewed only where they participate in explicit P3 dependency-boundary surfaces.

Outcome:
- boundary dialog/resource surfaces remain implementation-owned under their respective feature/provider domains;
- no new N-01 resource defect was identified;
- provider/engine/backend boundary messaging remains downstream-owned and is not converted into resource parity work;
- N-14 corrected boundary/result semantics in Java source without mutating Reference resources.

N-01-R6 remains globally open.
